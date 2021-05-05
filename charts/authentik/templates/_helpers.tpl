{{- define "authentik.ingress.isStable" -}}
  {{- $isStable := "" -}}
  {{- if eq (include "common.capabilities.ingress.apiVersion" $) "networking.k8s.io/v1" -}}
    {{- $isStable = "true" -}}
  {{- end -}}
  {{- $isStable -}}
{{- end -}}

{{- define "authentik.env" -}}
  {{- range $k, $v := .Values.authentik -}}
    {{ $name := "" }}
    {{- if kindIs "string" $v }}
      {{- $name = printf "%s_%s" (upper $k) (upper $v) }}
    {{- end }}
- name: {{ printf "AUTHENTIK_EMAIL__%s" (upper .) | quote }}
  value: {{ quote . }}
    {{- end -}}
  {{- end -}}
{{- end -}}
