# authentik

![Version: 1.0.0-RC5](https://img.shields.io/badge/Version-1.0.0--RC5-informational?style=flat-square) ![AppVersion: 2021.4.6](https://img.shields.io/badge/AppVersion-2021.4.6-informational?style=flat-square)

authentik is an open-source Identity Provider focused on flexibility and versatility

**Homepage:** <https://goauthentik.io>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| BeryJu | jens@beryju.org | https://github.com/BeryJu |
| dirtycajunrice | nick@cajun.pro | https://github.com/DirtyCajunRice |

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
| authentik.email.port | string | `""` |  |
| authentik.email.timeout | string | `""` |  |
| authentik.email.use_ssl | string | `""` |  |
| authentik.email.use_tls | string | `""` |  |
| authentik.email.username | string | `""` |  |
| authentik.error_reporting.enabled | bool | `false` |  |
| authentik.error_reporting.environment | string | `""` |  |
| authentik.error_reporting.send_pii | string | `""` |  |
| authentik.log_level | string | `""` |  |
| authentik.outposts.docker_image_base | string | `""` |  |
| authentik.postgresql.host | string | `""` |  |
| authentik.postgresql.name | string | `""` |  |
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
| image.name | string | `"ghcr.io/goauthentik/server"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.tag | string | `"2021.5.1"` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"authentik.domain.tld"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"Prefix"` |  |
| ingress.ingressClassName | string | `""` |  |
| ingress.labels | object | `{}` |  |
| livenessProbe.enabled | bool | `true` |  |
| livenessProbe.httpGet.path | string | `"/-/health/live/"` |  |
| livenessProbe.httpGet.port | string | `"http"` |  |
| livenessProbe.initialDelaySeconds | int | `60` |  |
| livenessProbe.periodSeconds | int | `30` |  |
| postgresql.enabled | bool | `false` |  |
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
| readinessProbe.initialDelaySeconds | int | `60` |  |
| readinessProbe.periodSeconds | int | `30` |  |
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
