{{/* Allow KubeVersion to be overridden. */}}
{{- define "authentik.capabilities.ingress.kubeVersion" -}}
  {{- default .Capabilities.KubeVersion.Version .Values.kubeVersionOverride -}}
{{- end -}}

{{/* Return the appropriate apiVersion for Ingress objects */}}
{{- define "authentik.capabilities.ingress.apiVersion" -}}
  {{- print "networking.k8s.io/v1" -}}
  {{- if semverCompare "<1.19" (include "authentik.capabilities.ingress.kubeVersion" .) -}}
    {{- print "beta1" -}}
  {{- end -}}
{{- end -}}

{{/* Check Ingress stability */}}
{{- define "authentik.capabilities.ingress.isStable" -}}
  {{- if eq (include "authentik.capabilities.ingress.apiVersion" .) "networking.k8s.io/v1" -}}
    {{- true -}}
  {{- end -}}
{{- end -}}

{{- define "authentik.env" -}}
  {{- range $k, $v := .values -}}
    {{- if kindIs "map" $v -}}
      {{- range $sk, $sv := $v -}}
        {{- include "authentik.env" (dict "root" $.root "values" (dict (printf "%s__%s" (upper $k) (upper $sk)) $sv)) -}}
      {{- end -}}
    {{- else -}}
      {{- $value := $v -}}
      {{- if or (kindIs "bool" $v) (kindIs "float64" $v) -}}
        {{- $v = $v | toString | b64enc | quote -}}
      {{- else -}}
        {{- $v = tpl $v $.root | toString | b64enc | quote }}
      {{- end -}}
      {{- if and ($v) (ne $v "\"\"") }}
{{ printf "AUTHENTIK_%s" (upper $k) }}: {{ $v }}
      {{- end }}
    {{- end -}}
  {{- end -}}
{{- end -}}

{{/* Expand the name of the chart */}}
{{- define "authentik.names.name" -}}
  {{- $globalNameOverride := "" -}}
  {{- if hasKey .Values "global" -}}
    {{- $globalNameOverride = (default $globalNameOverride .Values.global.nameOverride) -}}
  {{- end -}}
  {{- default .Chart.Name (default .Values.nameOverride $globalNameOverride) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Create chart name and version as used by the chart label */}}
{{- define "authentik.names.chart" -}}
  {{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "authentik.names.fullname" -}}
  {{- $name := include "authentik.names.name" . -}}
  {{- $globalFullNameOverride := "" -}}
  {{- if hasKey .Values "global" -}}
    {{- $globalFullNameOverride = (default $globalFullNameOverride .Values.global.fullnameOverride) -}}
  {{- end -}}
  {{- if or .Values.fullnameOverride $globalFullNameOverride -}}
    {{- $name = default .Values.fullnameOverride $globalFullNameOverride -}}
  {{- else -}}
    {{- if contains $name .Release.Name -}}
      {{- $name = .Release.Name -}}
    {{- else -}}
      {{- $name = printf "%s-%s" .Release.Name $name -}}
    {{- end -}}
  {{- end -}}
  {{- trunc 63 $name | trimSuffix "-" -}}
{{- end -}}


{{/* Common labels shared across objects */}}
{{- define "authentik.labels" -}}
helm.sh/chart: {{ include "authentik.names.chart" . }}
{{ include "authentik.labels.selectorLabels" . }}
  {{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
  {{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/* Selector labels shared across objects */}}
{{- define "authentik.labels.selectorLabels" -}}
app.kubernetes.io/name: {{ include "authentik.names.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
