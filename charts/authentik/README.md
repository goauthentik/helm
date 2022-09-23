<p align="center">
    <img src="https://goauthentik.io/img/icon_top_brand_colour.svg" height="150" alt="authentik logo">
</p>

---

[![Join Discord](https://img.shields.io/discord/809154715984199690?label=Discord&style=for-the-badge)](https://goauthentik.io/discord)
[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/goauthentik/helm/Lint%20and%20Test%20Chart?label=cid&style=for-the-badge)](https://github.com/goauthentik/helm/actions/workflows/lint-test.yaml)
![Version: 2022.9.0](https://img.shields.io/badge/Version-2022.9.0-informational?style=for-the-badge)
![AppVersion: 2022.9.0](https://img.shields.io/badge/AppVersion-2022.9.0-informational?style=for-the-badge)

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
| BeryJu | <jens@beryju.org> | <https://github.com/BeryJu> |
| dirtycajunrice | <nick@cajun.pro> | <https://github.com/dirtycajunrice> |

## Source Code

* <https://github.com/goauthentik/authentik>
* <https://goauthentik.io/docs/>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | 10.16.2 |
| https://charts.bitnami.com/bitnami | redis | 15.7.6 |
| https://library-charts.k8s-at-home.com | common | 4.2.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalContainers | object | `{}` | See https://github.com/k8s-at-home/library-charts/tree/main/charts/stable/common#values |
| affinity | object | `{}` | affinity applied to the deployments |
| authentik.avatars | string | `"gravatar"` | Mode for the avatars. Defaults to gravatar. Possible options 'gravatar' and 'none' |
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
| authentik.postgresql.s3_backup.access_key | string | `""` | optional S3 backup, access key |
| authentik.postgresql.s3_backup.bucket | string | `""` | optional S3 backup, bucket |
| authentik.postgresql.s3_backup.host | string | `""` | optional S3 backup, host, including protocol (https://minio.domain.tld) |
| authentik.postgresql.s3_backup.insecure_skip_verify | bool | `false` | optional S3 backup, set to `true` to disable SSL certificate verification |
| authentik.postgresql.s3_backup.location | string | `"/"` | optional S3 backup, location in the bucket |
| authentik.postgresql.s3_backup.region | string | `""` | optional S3 backup, region |
| authentik.postgresql.s3_backup.secret_key | string | `""` | optional S3 backup, secret key |
| authentik.postgresql.user | string | `authentik` | postgresql Username |
| authentik.redis.host | string | `{{ .Release.Name }}-redis-master` | set the redis hostname to talk to |
| authentik.redis.password | string | `""` |  |
| authentik.secret_key | string | `""` | Secret key used for cookie singing and unique user IDs, don't change this after the first install |
| blueprints | list | `[]` | List of config maps to mount blueprints from. Only keys in the configmap ending with ".yaml" wil be discovered and applied |
| env | object | `{}` | see configuration options at https://goauthentik.io/docs/installation/configuration/ |
| envFrom | list | `[]` |  |
| envValueFrom | object | `{}` |  |
| geoip.accountId | string | `""` | sign up under https://www.maxmind.com/en/geolite2/signup |
| geoip.editionIds | string | `"GeoLite2-City"` |  |
| geoip.enabled | bool | `false` | optional GeoIP, deploys a cronjob to download the maxmind database |
| geoip.image | string | `"maxmindinc/geoipupdate:v4.8"` |  |
| geoip.licenseKey | string | `""` | sign up under https://www.maxmind.com/en/geolite2/signup |
| geoip.updateInterval | int | `8` | number of hours between update runs |
| image.digest | string | `""` | optional container image digest |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| image.repository | string | `"ghcr.io/goauthentik/server"` |  |
| image.tag | string | `"2022.9.0"` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"authentik.domain.tld"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"Prefix"` |  |
| ingress.ingressClassName | string | `""` |  |
| ingress.labels | object | `{}` |  |
| ingress.tls | list | `[]` |  |
| initContainers | object | `{}` | See https://github.com/k8s-at-home/library-charts/tree/main/charts/stable/common#values |
| livenessProbe.enabled | bool | `true` | enables or disables the livenessProbe |
| livenessProbe.httpGet.path | string | `"/-/health/live/"` | liveness probe url path |
| livenessProbe.httpGet.port | string | `"http"` |  |
| livenessProbe.initialDelaySeconds | int | `50` |  |
| livenessProbe.periodSeconds | int | `10` |  |
| nodeSelector | object | `{}` | nodeSelector applied to the deployments |
| postgresql.enabled | bool | `false` | enable the bundled bitnami postgresql chart |
| postgresql.postgresqlDatabase | string | `"authentik"` |  |
| postgresql.postgresqlUsername | string | `"authentik"` |  |
| priorityClassName | string | `nil` | Custom priority class for different treatment by the scheduler |
| prometheus.rules.create | bool | `false` |  |
| prometheus.serviceMonitor.create | bool | `false` |  |
| prometheus.serviceMonitor.interval | string | `"30s"` |  |
| prometheus.serviceMonitor.scrapeTimeout | string | `"3s"` |  |
| readinessProbe.enabled | bool | `true` |  |
| readinessProbe.httpGet.path | string | `"/-/health/ready/"` |  |
| readinessProbe.httpGet.port | string | `"http"` |  |
| readinessProbe.initialDelaySeconds | int | `50` |  |
| readinessProbe.periodSeconds | int | `10` |  |
| redis.architecture | string | `"standalone"` |  |
| redis.auth.enabled | bool | `false` |  |
| redis.enabled | bool | `false` | enable the bundled bitnami redis chart |
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
| serviceAccount.create | bool | `true` | Service account is needed for managed outposts |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |
| worker.priorityClassName | string | `nil` | Custom priority class for different treatment by the scheduler |
| worker.replicas | int | `1` | worker replicas |
| worker.securityContext | object | `{}` | worker securityContext |
