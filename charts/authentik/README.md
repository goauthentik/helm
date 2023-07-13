<p align="center">
    <img src="https://goauthentik.io/img/icon_top_brand_colour.svg" height="150" alt="authentik logo">
</p>

---

[![Join Discord](https://img.shields.io/discord/809154715984199690?label=Discord&style=for-the-badge)](https://goauthentik.io/discord)
[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/goauthentik/helm/lint-test.yaml?branch=main&label=ci&style=for-the-badge)](https://github.com/goauthentik/helm/actions/workflows/lint-test.yaml)
![Version: 2023.6.3](https://img.shields.io/badge/Version-2023.6.3-informational?style=for-the-badge)
![AppVersion: 2023.6.1](https://img.shields.io/badge/AppVersion-2023.6.1-informational?style=for-the-badge)

authentik is an open-source Identity Provider focused on flexibility and versatility

**Homepage:** <https://goauthentik.io>

## Example values to get started:

```yaml
authentik:
  secret_key: "PleaseGenerateA50CharKey"
  # This sends anonymous usage-data, stack traces on errors and
  # performance data to sentry.beryju.org, and is fully opt-in
  error_reporting:
    enabled: true
  postgresql:
    password: "ThisIsNotASecurePassword"

ingress:
  enabled: true
  hosts:
    - host: authentik.domain.tld
      paths:
        - path: "/"
          pathType: Prefix

postgresql:
  enabled: true
  postgresqlPassword: "ThisIsNotASecurePassword"
redis:
  enabled: true
```

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| authentik Team | <hello@goauthentik.io> | <https://goauthentik.io> |

## Source Code

* <https://goauthentik.io/docs/>
* <https://github.com/goauthentik/authentik>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.goauthentik.io | serviceAccount(authentik-remote-cluster) | 1.1.2 |
| https://charts.goauthentik.io | postgresql | 10.16.2 |
| https://charts.goauthentik.io | redis | 15.7.6 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalContainers | object | `{}` | Specify any additional containers here as dictionary items. Each additional container should have its own key. Helm templates can be used. |
| affinity | object | `{}` | affinity applied to the deployments |
| annotations | object | `{}` | Annotations to add to the server and worker deployments |
| authentik.email.from | string | `""` | Email from address, can either be in the format "foo@bar.baz" or "authentik <foo@bar.baz>" |
| authentik.email.host | string | `""` | SMTP Server emails are sent from, fully optional |
| authentik.email.password | string | `""` | SMTP credentials, when left empty, not authentication will be done |
| authentik.email.port | int | `587` |  |
| authentik.email.timeout | int | `30` | Connection timeout |
| authentik.email.use_ssl | bool | `false` | Enable either use_tls or use_ssl, they can't be enabled at the same time. |
| authentik.email.use_tls | bool | `false` | Enable either use_tls or use_ssl, they can't be enabled at the same time. |
| authentik.email.username | string | `""` | SMTP credentials, when left empty, not authentication will be done |
| authentik.error_reporting.enabled | bool | `false` | This sends anonymous usage-data, stack traces on errors and performance data to sentry.beryju.org, and is fully opt-in |
| authentik.error_reporting.environment | string | `"k8s"` | This is a string that is sent to sentry with your error reports |
| authentik.error_reporting.send_pii | bool | `false` | Send PII (Personally identifiable information) data to sentry |
| authentik.geoip | string | `"/geoip/GeoLite2-City.mmdb"` | Path for the geoip database. If the file doesn't exist, GeoIP features are disabled. |
| authentik.log_level | string | `"info"` | Log level for server and worker |
| authentik.outposts.container_image_base | string | `"ghcr.io/goauthentik/%(type)s:%(version)s"` | Template used for managed outposts. The following placeholders can be used %(type)s - the type of the outpost %(version)s - version of your authentik install %(build_hash)s - only for beta versions, the build hash of the image |
| authentik.postgresql.host | string | `{{ .Release.Name }}-postgresql` | set the postgresql hostname to talk to if unset and .Values.postgresql.enabled == true, will generate the default |
| authentik.postgresql.name | string | `authentik` | postgresql Database name |
| authentik.postgresql.password | string | `""` |  |
| authentik.postgresql.port | int | `5432` |  |
| authentik.postgresql.user | string | `authentik` | postgresql Username |
| authentik.redis.host | string | `{{ .Release.Name }}-redis-master` | set the redis hostname to talk to |
| authentik.redis.password | string | `""` |  |
| authentik.secret_key | string | `""` | Secret key used for cookie singing and unique user IDs, don't change this after the first install |
| autoscaling.server.enabled | bool | `false` | Create a HPA for the server deployment |
| autoscaling.server.maxReplicas | int | `5` |  |
| autoscaling.server.minReplicas | int | `1` |  |
| autoscaling.server.targetCPUUtilizationPercentage | int | `50` |  |
| autoscaling.worker.enabled | bool | `false` | Create a HPA for the worker deployment |
| autoscaling.worker.maxReplicas | int | `5` |  |
| autoscaling.worker.minReplicas | int | `1` |  |
| autoscaling.worker.targetCPUUtilizationPercentage | int | `80` |  |
| blueprints | list | `[]` | List of config maps to mount blueprints from. Only keys in the configmap ending with ".yaml" wil be discovered and applied |
| containerSecurityContext | object | `{}` | server containerSecurityContext |
| env | object | `{}` | see configuration options at https://goauthentik.io/docs/installation/configuration/ |
| envFrom | list | `[]` |  |
| envValueFrom | object | `{}` |  |
| geoip.accountId | string | `""` | sign up under https://www.maxmind.com/en/geolite2/signup |
| geoip.containerSecurityContext | object | `{}` | server containerSecurityContext |
| geoip.editionIds | string | `"GeoLite2-City"` |  |
| geoip.enabled | bool | `false` | optional GeoIP, deploys a cronjob to download the maxmind database |
| geoip.image | string | `"maxmindinc/geoipupdate:v4.8"` |  |
| geoip.licenseKey | string | `""` | sign up under https://www.maxmind.com/en/geolite2/signup |
| geoip.updateInterval | int | `8` | number of hours between update runs |
| image.digest | string | `""` | optional container image digest |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| image.repository | string | `"ghcr.io/goauthentik/server"` |  |
| image.tag | string | `"2023.6.1"` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"authentik.domain.tld"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"Prefix"` |  |
| ingress.ingressClassName | string | `""` |  |
| ingress.labels | object | `{}` |  |
| ingress.tls | list | `[]` |  |
| initContainers | object | `{}` | Specify any initContainers here as dictionary items. Each initContainer should have its own key. The dictionary item key will determine the order. Helm templates can be used |
| livenessProbe.enabled | bool | `true` | enables or disables the livenessProbe |
| livenessProbe.httpGet.path | string | `"/-/health/live/"` | liveness probe url path |
| livenessProbe.httpGet.port | string | `"http"` |  |
| livenessProbe.initialDelaySeconds | int | `5` |  |
| livenessProbe.periodSeconds | int | `10` |  |
| nodeSelector | object | `{}` | nodeSelector applied to the deployments |
| podAnnotations | object | `{}` | Annotations to add to the server and worker pods |
| postgresql.enabled | bool | `false` | enable the bundled bitnami postgresql chart |
| postgresql.image.tag | string | `"11.19.0-debian-11-r4"` |  |
| postgresql.postgresqlDatabase | string | `"authentik"` |  |
| postgresql.postgresqlMaxConnections | int | `500` |  |
| postgresql.postgresqlUsername | string | `"authentik"` |  |
| priorityClassName | string | `nil` | Custom priority class for different treatment by the scheduler |
| prometheus.rules.create | bool | `false` |  |
| prometheus.rules.labels | object | `{}` | labels additional on PrometheusRule |
| prometheus.serviceMonitor.create | bool | `false` |  |
| prometheus.serviceMonitor.interval | string | `"30s"` |  |
| prometheus.serviceMonitor.labels | object | `{}` | labels additional on ServiceMonitor |
| prometheus.serviceMonitor.scrapeTimeout | string | `"3s"` |  |
| readinessProbe.enabled | bool | `true` |  |
| readinessProbe.httpGet.path | string | `"/-/health/ready/"` |  |
| readinessProbe.httpGet.port | string | `"http"` |  |
| readinessProbe.periodSeconds | int | `10` |  |
| redis.architecture | string | `"standalone"` |  |
| redis.auth.enabled | bool | `false` |  |
| redis.enabled | bool | `false` | enable the bundled bitnami redis chart |
| redis.image.tag | string | `"6.2.10-debian-11-r13"` |  |
| replicas | int | `1` | Server replicas |
| resources.server | object | `{}` |  |
| resources.worker | object | `{}` |  |
| securityContext | object | `{}` | server securityContext |
| service.annotations | object | `{}` |  |
| service.enabled | bool | `true` | Service that is created to access authentik |
| service.labels | object | `{}` |  |
| service.name | string | `"http"` |  |
| service.port | int | `80` |  |
| service.protocol | string | `"TCP"` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` | Service account is needed for managed outposts |
| serviceAccount.serviceAccountSecret.enabled | bool | `false` | As we use the authentik-remote-cluster chart as subchart, and that chart creates a service account secret by default which we don't need here, disable its creation |
| startupProbe.enabled | bool | `true` | enables or disables the livenessProbe |
| startupProbe.failureThreshold | int | `60` |  |
| startupProbe.httpGet.path | string | `"/-/health/live/"` | liveness probe url path |
| startupProbe.httpGet.port | string | `"http"` |  |
| startupProbe.periodSeconds | int | `5` |  |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |
| worker.containerSecurityContext | object | `{}` | server containerSecurityContext |
| worker.priorityClassName | string | `nil` | Custom priority class for different treatment by the scheduler |
| worker.replicas | int | `1` | worker replicas |
| worker.securityContext | object | `{}` | worker securityContext |
