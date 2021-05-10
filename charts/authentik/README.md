# authentik

![Version: 1.0.0-RC6](https://img.shields.io/badge/Version-1.0.0--RC6-informational?style=flat-square) ![AppVersion: 2021.4.5](https://img.shields.io/badge/AppVersion-2021.4.5-informational?style=flat-square)

authentik is an open-source Identity Provider focused on flexibility and versatility

**Homepage:** <https://goauthentik.io>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| BeryJu | jens@beryju.org | https://github.com/BeryJu |
| dirtycajunrice | nick@cajun.pro | https://github.com/DirtyCajunRice |

## Example values to get started:

```yaml
authentik:
  secret_key: "PleaseGenerateA50CharKey"
  # This sends anonymous usage-data, stack traces on errors and
  # performance data to sentry.beryju.org, and is fully opt-in
  error_reporting:
    enabled: true
  postgresql:
    host: "asdf-postgresql"
    name: "authentik"
    user: "authentik"
    password: "ThisIsNotASecurePassword"
  redis:
    host: "asdf-redis-master"

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

## Source Code

* <https://github.com/goauthentik/authentik>
* <https://goauthentik.io/docs/>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | 10.4.2 |
| https://charts.bitnami.com/bitnami | redis | 14.1.1 |
| https://library-charts.k8s-at-home.com | common | 2.4.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| authentik.email.from | string | `""` |  |
| authentik.email.host | string | `""` |  |
| authentik.email.port | int | `587` |  |
| authentik.email.timeout | int | `30` |  |
| authentik.email.use_ssl | bool | `false` |  |
| authentik.email.use_tls | bool | `false` |  |
| authentik.email.username | string | `""` |  |
| authentik.error_reporting.enabled | bool | `false` |  |
| authentik.error_reporting.environment | string | `"k8s"` |  |
| authentik.error_reporting.send_pii | bool | `false` |  |
| authentik.log_level | string | `"info"` |  |
| authentik.outposts.docker_image_base | string | `"ghcr.io/goauthentik/%(type)s:%(version)s"` |  |
| authentik.postgresql.host | string | `{{ .Release.Name }}-postgresql` | set the postgresql hostname to talk to if unset and .Values.postgresql.enabled == true, will generate the default |
| authentik.postgresql.name | string | `""` |  |
| authentik.postgresql.password | string | `""` |  |
| authentik.postgresql.s3_backup.access_key | string | `""` |  |
| authentik.postgresql.s3_backup.bucket | string | `""` |  |
| authentik.postgresql.s3_backup.host | string | `""` |  |
| authentik.postgresql.s3_backup.region | string | `""` |  |
| authentik.postgresql.user | string | `""` |  |
| authentik.redis.host | string | `""` |  |
| authentik.redis.password | string | `""` |  |
| authentik.secret_key | string | `""` |  |
| env | object | `{}` |  |
| envFrom | list | `[]` |  |
| envValueFrom | object | `{}` |  |
| geoip.accountId | string | `""` |  |
| geoip.editionIds | string | `"GeoLite2-City"` |  |
| geoip.enabled | bool | `false` |  |
| geoip.licenseKey | string | `""` |  |
| geoip.schedule | string | `"0 */8 * * *"` |  |
| image.name | string | `"docker.beryju.org/authentik/server"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.tag | string | `"gh-next"` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"authentik.domain.tld"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"Prefix"` |  |
| ingress.ingressClassName | string | `""` |  |
| ingress.labels | object | `{}` |  |
| livenessProbe.enabled | bool | `true` | enables or disables the livenessProbe |
| livenessProbe.httpGet.path | string | `"/-/health/live/"` | liveness probe url path |
| livenessProbe.httpGet.port | string | `"http"` |  |
| livenessProbe.initialDelaySeconds | int | `15` |  |
| livenessProbe.periodSeconds | int | `10` |  |
| postgresql.enabled | bool | `false` |  |
| postgresql.postgresqlDatabase | string | `"authentik"` |  |
| postgresql.postgresqlUsername | string | `"authentik"` |  |
| prometheus.rules.create | bool | `false` |  |
| prometheus.serviceMonitor.create | bool | `false` |  |
| prometheus.serviceMonitor.interval | string | `"10s"` |  |
| prometheus.serviceMonitor.scrapeTimeout | string | `"3s"` |  |
| prometheus.serviceMonitor.secret.name | string | `""` |  |
| prometheus.serviceMonitor.secret.passwordKey | string | `""` |  |
| prometheus.serviceMonitor.secret.usernameKey | string | `""` |  |
| readinessProbe.enabled | bool | `true` |  |
| readinessProbe.httpGet.path | string | `"/-/health/ready/"` |  |
| readinessProbe.httpGet.port | string | `"http"` |  |
| readinessProbe.initialDelaySeconds | int | `15` |  |
| readinessProbe.periodSeconds | int | `10` |  |
| redis.auth.enabled | bool | `false` |  |
| redis.enabled | bool | `false` |  |
| replicas | int | `1` |  |
| resources.server | object | `{}` |  |
| resources.worker | object | `{}` |  |
| service.annotations | object | `{}` |  |
| service.enabled | bool | `true` |  |
| service.labels | object | `{}` |  |
| service.name | string | `"http"` |  |
| service.port | int | `80` |  |
| service.protocol | string | `"TCP"` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.create | bool | `true` |  |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |
