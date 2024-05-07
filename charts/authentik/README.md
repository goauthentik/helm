<p align="center">
    <img src="https://goauthentik.io/img/icon_top_brand_colour.svg" height="150" alt="authentik logo">
</p>

---

[![Join Discord](https://img.shields.io/discord/809154715984199690?label=Discord&style=for-the-badge)](https://goauthentik.io/discord)
[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/goauthentik/helm/lint-test.yaml?branch=main&label=ci&style=for-the-badge)](https://github.com/goauthentik/helm/actions/workflows/lint-test.yaml)
![Version: 2024.4.2](https://img.shields.io/badge/Version-2024.4.2-informational?style=for-the-badge)
![AppVersion: 2024.4.2](https://img.shields.io/badge/AppVersion-2024.4.2-informational?style=for-the-badge)

authentik is an open-source Identity Provider focused on flexibility and versatility

**Homepage:** <https://goauthentik.io>

## Example values to get started:

```yaml
authentik:
  secret_key: "PleaseGenerateA50CharKey"
  # This sends anonymous usage-data, stack traces on errors and
  # performance data to authentik.error-reporting.a7k.io, and is fully opt-in
  error_reporting:
    enabled: true
  postgresql:
    password: "ThisIsNotASecurePassword"

server:
  ingress:
    enabled: true
    hosts:
      - authentik.domain.tld

postgresql:
  enabled: true
  auth:
    password: "ThisIsNotASecurePassword"

redis:
  enabled: true
```

## Advanced values examples

<details>
<summary>External PostgreSQL and Redis</summary>

```yaml
authentik:
  postgresql:
    host: postgres.domain.tld
    user: file:///postgres-creds/username
    password: file:///postgres-creds/password
  redis:
    host: redis.domain.tld
server:
  volumes:
    - name: postgres-creds
      secret:
        secretName: authentik-postgres-credentials
  volumeMounts:
    - name: postgres-creds
      mountPath: /postgres-creds
      readOnly: true
worker:
  volumes:
    - name: postgres-creds
      secret:
        secretName: authentik-postgres-credentials
  volumeMounts:
    - name: postgres-creds
      mountPath: /postgres-creds
      readOnly: true
```

The secret `authentik-postgres-credentials` must have `username` and `password` keys.
</details>

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
| https://charts.goauthentik.io | serviceAccount(authentik-remote-cluster) | 2.0.0 |
| oci://registry-1.docker.io/bitnamicharts | postgresql | 12.12.10 |
| oci://registry-1.docker.io/bitnamicharts | redis | 18.6.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalObjects | list | `[]` | additional resources to deploy. Those objects are templated. |
| authentik.email.from | string | `""` | Email from address, can either be in the format "foo@bar.baz" or "authentik <foo@bar.baz>" |
| authentik.email.host | string | `""` | SMTP Server emails are sent from, fully optional |
| authentik.email.password | string | `""` | SMTP credentials, when left empty, no authentication will be done |
| authentik.email.port | int | `587` | SMTP server port |
| authentik.email.timeout | int | `30` | Connection timeout |
| authentik.email.use_ssl | bool | `false` | Enable either use_tls or use_ssl, they can't be enabled at the same time. |
| authentik.email.use_tls | bool | `false` | Enable either use_tls or use_ssl, they can't be enabled at the same time. |
| authentik.email.username | string | `""` | SMTP credentials, when left empty, no authentication will be done |
| authentik.error_reporting.enabled | bool | `false` | This sends anonymous usage-data, stack traces on errors and performance data to sentry.beryju.org, and is fully opt-in |
| authentik.error_reporting.environment | string | `"k8s"` | This is a string that is sent to sentry with your error reports |
| authentik.error_reporting.send_pii | bool | `false` | Send PII (Personally identifiable information) data to sentry |
| authentik.events.context_processors.asn | string | `"/geoip/GeoLite2-ASN.mmdb"` | Path for the GeoIP ASN database. If the file doesn't exist, GeoIP features are disabled. |
| authentik.events.context_processors.geoip | string | `"/geoip/GeoLite2-City.mmdb"` | Path for the GeoIP City database. If the file doesn't exist, GeoIP features are disabled. |
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
| blueprints.configMaps | list | `[]` | List of config maps to mount blueprints from. Only keys in the configMap ending with `.yaml` will be discovered and applied. |
| blueprints.secrets | list | `[]` | List of secrets to mount blueprints from. Only keys in the secret ending with `.yaml` will be discovered and applied. |
| fullnameOverride | string | `""` | String to fully override `"authentik.fullname"`. Prefer using global.fullnameOverride if possible |
| geoip.accountId | string | `""` | sign up under https://www.maxmind.com/en/geolite2/signup |
| geoip.containerSecurityContext | object | See [values.yaml] | GeoIP container-level security context |
| geoip.editionIds | string | `"GeoLite2-City GeoLite2-ASN"` |  |
| geoip.enabled | bool | `false` | enable GeoIP sidecars for the authentik server and worker pods |
| geoip.env | list | `[]` (See [values.yaml]) | Environment variables to pass to the GeoIP containers |
| geoip.envFrom | list | `[]` (See [values.yaml]) | envFrom to pass to the GeoIP containers |
| geoip.existingSecret.accountId | string | `"account_id"` | key in the secret containing the account ID |
| geoip.existingSecret.licenseKey | string | `"license_key"` | key in the secret containing the license key |
| geoip.existingSecret.secretName | string | `""` | name of an existing secret to use instead of values above |
| geoip.image.digest | string | `""` | If defined, an image digest for GeoIP images |
| geoip.image.pullPolicy | string | `"IfNotPresent"` | If defined, an imagePullPolicy for GeoIP images |
| geoip.image.repository | string | `"ghcr.io/maxmind/geoipupdate"` | If defined, a repository for GeoIP images |
| geoip.image.tag | string | `"v6.0.0"` | If defined, a tag for GeoIP images |
| geoip.licenseKey | string | `""` | sign up under https://www.maxmind.com/en/geolite2/signup |
| geoip.resources | object | `{}` | Resource limits and requests for GeoIP containers |
| geoip.updateInterval | int | `8` | GeoIP update frequency, in hours |
| geoip.volumeMounts | list | `[]` | Additional volumeMounts to the GeoIP containers. Make sure the volumes exists for the server and the worker. |
| global.addPrometheusAnnotations | bool | `false` | Add Prometheus scrape annotations to all metrics services. This can be used as an alternative to the ServiceMonitors. |
| global.additionalLabels | object | `{}` | Common labels for all resources. |
| global.affinity.nodeAffinity.matchExpressions | list | `[]` | Default match expressions for node affinity |
| global.affinity.nodeAffinity.type | string | `"hard"` | Default node affinity rules. Either `none`, `soft` or `hard` |
| global.affinity.podAntiAffinity | string | `"soft"` | Default pod anti-affinity rules. Either: `none`, `soft` or `hard` |
| global.deploymentAnnotations | object | `{}` | Annotations for all deployed Deployments |
| global.deploymentStrategy | object | `{}` | Deployment strategy for all deployed Deployments |
| global.env | list | `[]` (See [values.yaml]) | Environment variables to pass to all deployed Deployments. Does not apply to GeoIP See configuration options at https://goauthentik.io/docs/installation/configuration/ |
| global.envFrom | list | `[]` (See [values.yaml]) | envFrom to pass to all deployed Deployments. Does not apply to GeoIP |
| global.fullnameOverride | string | `""` | String to fully override `"authentik.fullname"` |
| global.hostAliases | list | `[]` | Mapping between IP and hostnames that will be injected as entries in the pod's hosts files |
| global.image.digest | string | `""` | If defined, an image digest applied to all authentik deployments |
| global.image.pullPolicy | string | `"IfNotPresent"` | If defined, an imagePullPolicy applied to all authentik deployments |
| global.image.repository | string | `"ghcr.io/goauthentik/server"` | If defined, a repository applied to all authentik deployments |
| global.image.tag | string | `""` | Overrides the global authentik whose default is the chart appVersion |
| global.imagePullSecrets | list | `[]` | Secrets with credentials to pull images from a private registry |
| global.nameOverride | string | `""` | Provide a name in place of `authentik` |
| global.nodeSelector | object | `{}` | Default node selector for all components |
| global.podAnnotations | object | `{}` | Annotations for all deployed pods |
| global.podLabels | object | `{}` | Labels for all deployed pods |
| global.priorityClassName | string | `""` | Default priority class for all components |
| global.revisionHistoryLimit | int | `3` |  |
| global.securityContext | object | `{}` (See [values.yaml]) | Toggle and define pod-level security context. |
| global.tolerations | list | `[]` | Default tolerations for all components |
| global.topologySpreadConstraints | list | `[]` | Default [TopologySpreadConstraints] rules for all components # Ref: https://kubernetes.io/docs/concepts/workloads/pods/pod-topology-spread-constraints/ |
| global.volumeMounts | list | `[]` (See [values.yaml]) | Additional volumeMounts to all deployed Deployments. Does not apply to GeoIP |
| global.volumes | list | `[]` (See [values.yaml]) | Additional volumes to all deployed Deployments. |
| kubeVersionOverride | string | `""` | Override the Kubernetes version, which is used to evaluate certain manifests |
| nameOverride | string | `""` | Provide a name in place of `authentik`. Prefer using global.nameOverride if possible |
| postgresql.auth.database | string | `"authentik"` |  |
| postgresql.auth.username | string | `"authentik"` |  |
| postgresql.enabled | bool | `false` | enable the Bitnami PostgreSQL chart. Refer to https://github.com/bitnami/charts/blob/main/bitnami/postgresql/ for possible values. |
| postgresql.primary.extendedConfiguration | string | `"max_connections = 500\n"` |  |
| prometheus.rules.annotations | object | `{}` | PrometheusRule annotations |
| prometheus.rules.enabled | bool | `false` |  |
| prometheus.rules.labels | object | `{}` | PrometheusRule labels |
| prometheus.rules.namespace | string | `""` | PrometheusRule namespace |
| prometheus.rules.selector | object | `{}` | PrometheusRule selector |
| redis.architecture | string | `"standalone"` |  |
| redis.auth.enabled | bool | `false` |  |
| redis.enabled | bool | `false` | enable the Bitnami Redis chart. Refer to https://github.com/bitnami/charts/blob/main/bitnami/redis/ for possible values. |
| server.affinity | object | `{}` (defaults to the global.affinity preset) | Assign custom [affinity] rules to the deployment |
| server.autoscaling.behavior | object | `{}` | Configures the scaling behavior of the target in both Up and Down directions. |
| server.autoscaling.enabled | bool | `false` | Enable Horizontal Pod Autoscaler ([HPA]) for the authentik server |
| server.autoscaling.maxReplicas | int | `5` | Maximum number of replicas for the authentik server [HPA] |
| server.autoscaling.metrics | list | `[]` | Configures custom HPA metrics for the authentik server Ref: https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/ |
| server.autoscaling.minReplicas | int | `1` | Minimum number of replicas for the authentik server [HPA] |
| server.autoscaling.targetCPUUtilizationPercentage | int | `50` | Average CPU utilization percentage for the authentik server [HPA] |
| server.autoscaling.targetMemoryUtilizationPercentage | string | `nil` | Average memory utilization percentage for the authentik server [HPA] |
| server.containerPorts.http | int | `9000` | http container port |
| server.containerPorts.https | int | `9443` | https container port |
| server.containerPorts.metrics | int | `9300` | metrics container port |
| server.containerSecurityContext | object | See [values.yaml] | authentik server container-level security context |
| server.deploymentAnnotations | object | `{}` | Annotations to be added to the authentik server Deployment |
| server.deploymentStrategy | object | `{}` (defaults to global.deploymentStrategy) | Deployment strategy to be added to the authentik server Deployment |
| server.dnsConfig | object | `{}` | [DNS configuration] |
| server.dnsPolicy | string | `""` | Alternative DNS policy for authentik server pods |
| server.env | list | `[]` (See [values.yaml]) | Environment variables to pass to the authentik server. Does not apply to GeoIP See configuration options at https://goauthentik.io/docs/installation/configuration/ |
| server.envFrom | list | `[]` (See [values.yaml]) | envFrom to pass to the authentik server. Does not apply to GeoIP |
| server.extraContainers | list | `[]` | Additional containers to be added to the authentik server pod # Note: Supports use of custom Helm templates |
| server.hostNetwork | bool | `false` | Host Network for authentik server pods |
| server.image.digest | string | `""` (defaults to global.image.digest) | Digest to use to the authentik server |
| server.image.pullPolicy | string | `""` (defaults to global.image.pullPolicy) | Image pull policy to use to the authentik server |
| server.image.repository | string | `""` (defaults to global.image.repository) | Repository to use to the authentik server |
| server.image.tag | string | `""` (defaults to global.image.tag) | Tag to use to the authentik server |
| server.imagePullSecrets | list | `[]` (defaults to global.imagePullSecrets) | Secrets with credentials to pull images from a private registry |
| server.ingress.annotations | object | `{}` | additional ingress annotations |
| server.ingress.enabled | bool | `false` | enable an ingress resource for the authentik server |
| server.ingress.extraPaths | list | `[]` | additional ingress paths |
| server.ingress.hosts | list | `[]` | List of ingress hosts |
| server.ingress.https | bool | `false` | uses `server.service.servicePortHttps` instead of `server.service.servicePortHttp` |
| server.ingress.ingressClassName | string | `""` | defines which ingress controller will implement the resource |
| server.ingress.labels | object | `{}` | additional ingress labels |
| server.ingress.pathType | string | `"Prefix"` | Ingress path type. One of `Exact`, `Prefix` or `ImplementationSpecific` |
| server.ingress.paths | list | `["/"]` | List of ingress paths |
| server.ingress.tls | list | `[]` | ingress TLS configuration |
| server.initContainers | list | `[]` | Init containers to add to the authentik server pod # Note: Supports use of custom Helm templates |
| server.lifecycle | object | `{}` | Specify postStart and preStop lifecycle hooks for you authentik server container |
| server.livenessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| server.livenessProbe.httpGet.path | string | `"/-/health/live/"` |  |
| server.livenessProbe.httpGet.port | string | `"http"` |  |
| server.livenessProbe.initialDelaySeconds | int | `5` | Number of seconds after the container has started before [probe] is initiated |
| server.livenessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| server.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| server.livenessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| server.metrics.enabled | bool | `false` | deploy metrics service |
| server.metrics.service.annotations | object | `{}` | metrics service annotations |
| server.metrics.service.clusterIP | string | `""` | metrics service clusterIP. `None` makes a "headless service" (no virtual IP) |
| server.metrics.service.labels | object | `{}` | metrics service labels |
| server.metrics.service.portName | string | `"metrics"` | metrics service port name |
| server.metrics.service.servicePort | int | `9300` | metrics service port |
| server.metrics.service.type | string | `"ClusterIP"` | metrics service type |
| server.metrics.serviceMonitor.annotations | object | `{}` | Prometheus ServiceMonitor annotations |
| server.metrics.serviceMonitor.enabled | bool | `false` | enable a prometheus ServiceMonitor |
| server.metrics.serviceMonitor.interval | string | `"30s"` | Prometheus ServiceMonitor interval |
| server.metrics.serviceMonitor.labels | object | `{}` | Prometheus ServiceMonitor labels |
| server.metrics.serviceMonitor.metricRelabelings | list | `[]` | Prometheus [MetricsRelabelConfigs] to apply to samples before ingestion |
| server.metrics.serviceMonitor.namespace | string | `""` | Prometheus ServiceMonitor namespace |
| server.metrics.serviceMonitor.relabelings | list | `[]` | Prometheus [RelabelConfigs] to apply to samples before scraping |
| server.metrics.serviceMonitor.scheme | string | `""` | Prometheus ServiceMonitor scheme |
| server.metrics.serviceMonitor.scrapeTimeout | string | `"3s"` | Prometheus ServiceMonitor scrape timeout |
| server.metrics.serviceMonitor.selector | object | `{}` | Prometheus ServiceMonitor selector |
| server.metrics.serviceMonitor.tlsConfig | object | `{}` | Prometheus ServiceMonitor tlsConfig |
| server.name | string | `"server"` | authentik server name |
| server.nodeSelector | object | `{}` (defaults to global.nodeSelector) | [Node selector] |
| server.pdb.annotations | object | `{}` | Annotations to be added to the authentik server pdb |
| server.pdb.enabled | bool | `false` | Deploy a [PodDistrubtionBudget] for the authentik server |
| server.pdb.labels | object | `{}` | Labels to be added to the authentik server pdb |
| server.pdb.maxUnavailable | string | `""` | Number of pods that are unavailable after eviction as number or percentage (eg.: 50%) # Has higher precedence over `server.pdb.minAvailable` |
| server.pdb.minAvailable | string | `""` (defaults to 0 if not specified) | Number of pods that are available after eviction as number or percentage (eg.: 50%) |
| server.podAnnotations | object | `{}` | Annotations to be added to the authentik server pods |
| server.podLabels | object | `{}` | Labels to be added to the authentik server pods |
| server.priorityClassName | string | `""` (defaults to global.priorityClassName) | Prority class for the authentik server pods |
| server.readinessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| server.readinessProbe.httpGet.path | string | `"/-/health/ready/"` |  |
| server.readinessProbe.httpGet.port | string | `"http"` |  |
| server.readinessProbe.initialDelaySeconds | int | `5` | Number of seconds after the container has started before [probe] is initiated |
| server.readinessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| server.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| server.readinessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| server.replicas | int | `1` | The number of server pods to run |
| server.resources | object | `{}` | Resource limits and requests for the authentik server |
| server.securityContext | object | `{}` (See [values.yaml]) | authentik server pod-level security context |
| server.service.annotations | object | `{}` | authentik server service annotations |
| server.service.externalIPs | list | `[]` | authentik server service external IPs |
| server.service.externalTrafficPolicy | string | `""` | Denotes if this service desires to route external traffic to node-local or cluster-wide endpoints |
| server.service.labels | object | `{}` | authentik server service labels |
| server.service.loadBalancerIP | string | `""` | LoadBalancer will get created with the IP specified in this field |
| server.service.loadBalancerSourceRanges | list | `[]` | Source IP ranges to allow access to service from |
| server.service.nodePortHttp | int | `30080` | authentik server service http port for NodePort service type (only if `server.service.type` is set to `NodePort`) |
| server.service.nodePortHttps | int | `30443` | authentik server service https port for NodePort service type (only if `server.service.type` is set to `NodePort`) |
| server.service.servicePortHttp | int | `80` | authentik server service http port |
| server.service.servicePortHttpName | string | `"http"` | authentik server service http port name |
| server.service.servicePortHttps | int | `443` | authentik server service https port |
| server.service.servicePortHttpsName | string | `"https"` | authentik server service https port name |
| server.service.sessionAffinity | string | `""` | Used to maintain session affinity. Supports `ClientIP` and `None` |
| server.service.sessionAffinityConfig | object | `{}` | Session affinity configuration |
| server.service.type | string | `"ClusterIP"` | authentik server service type |
| server.startupProbe.failureThreshold | int | `60` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| server.startupProbe.httpGet.path | string | `"/-/health/live/"` |  |
| server.startupProbe.httpGet.port | string | `"http"` |  |
| server.startupProbe.initialDelaySeconds | int | `5` | Number of seconds after the container has started before [probe] is initiated |
| server.startupProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| server.startupProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| server.startupProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| server.terminationGracePeriodSeconds | int | `30` | terminationGracePeriodSeconds for container lifecycle hook |
| server.tolerations | list | `[]` (defaults to global.tolerations) | [Tolerations] for use with node taints |
| server.topologySpreadConstraints | list | `[]` (defaults to global.topologySpreadConstraints) | Assign custom [TopologySpreadConstraints] rules to the authentik server # Ref: https://kubernetes.io/docs/concepts/workloads/pods/pod-topology-spread-constraints/ # If labelSelector is left out, it will default to the labelSelector configuration of the deployment |
| server.volumeMounts | list | `[]` | Additional volumeMounts to the authentik server main container |
| server.volumes | list | `[]` | Additional volumes to the authentik server pod |
| serviceAccount.annotations | object | `{}` | additional service account annotations |
| serviceAccount.create | bool | `true` | Create service account. Needed for managed outposts |
| serviceAccount.fullnameOverride | string | `"authentik"` |  |
| serviceAccount.serviceAccountSecret.enabled | bool | `false` |  |
| worker.affinity | object | `{}` (defaults to the global.affinity preset) | Assign custom [affinity] rules to the deployment |
| worker.autoscaling.behavior | object | `{}` | Configures the scaling behavior of the target in both Up and Down directions. |
| worker.autoscaling.enabled | bool | `false` | Enable Horizontal Pod Autoscaler ([HPA]) for the authentik worker |
| worker.autoscaling.maxReplicas | int | `5` | Maximum number of replicas for the authentik worker [HPA] |
| worker.autoscaling.metrics | list | `[]` | Configures custom HPA metrics for the authentik worker Ref: https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/ |
| worker.autoscaling.minReplicas | int | `1` | Minimum number of replicas for the authentik worker [HPA] |
| worker.autoscaling.targetCPUUtilizationPercentage | int | `50` | Average CPU utilization percentage for the authentik worker [HPA] |
| worker.autoscaling.targetMemoryUtilizationPercentage | string | `nil` | Average memory utilization percentage for the authentik worker [HPA] |
| worker.containerSecurityContext | object | See [values.yaml] | authentik worker container-level security context |
| worker.deploymentAnnotations | object | `{}` | Annotations to be added to the authentik worker Deployment |
| worker.deploymentStrategy | object | `{}` (defaults to global.deploymentStrategy) | Deployment strategy to be added to the authentik worker Deployment |
| worker.dnsConfig | object | `{}` | [DNS configuration] |
| worker.dnsPolicy | string | `""` | Alternative DNS policy for authentik worker pods |
| worker.env | list | `[]` (See [values.yaml]) | Environment variables to pass to the authentik worker. Does not apply to GeoIP See configuration options at https://goauthentik.io/docs/installation/configuration/ |
| worker.envFrom | list | `[]` (See [values.yaml]) | envFrom to pass to the authentik worker. Does not apply to GeoIP |
| worker.extraContainers | list | `[]` | Additional containers to be added to the authentik worker pod # Note: Supports use of custom Helm templates |
| worker.hostNetwork | bool | `false` | Host Network for authentik worker pods |
| worker.image.digest | string | `""` (defaults to global.image.digest) | Digest to use to the authentik worker |
| worker.image.pullPolicy | string | `""` (defaults to global.image.pullPolicy) | Image pull policy to use to the authentik worker |
| worker.image.repository | string | `""` (defaults to global.image.repository) | Repository to use to the authentik worker |
| worker.image.tag | string | `""` (defaults to global.image.tag) | Tag to use to the authentik worker |
| worker.imagePullSecrets | list | `[]` (defaults to global.imagePullSecrets) | Secrets with credentials to pull images from a private registry |
| worker.initContainers | list | `[]` | Init containers to add to the authentik worker pod # Note: Supports use of custom Helm templates |
| worker.lifecycle | object | `{}` | Specify postStart and preStop lifecycle hooks for you authentik worker container |
| worker.livenessProbe.exec.command[0] | string | `"ak"` |  |
| worker.livenessProbe.exec.command[1] | string | `"healthcheck"` |  |
| worker.livenessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| worker.livenessProbe.initialDelaySeconds | int | `5` | Number of seconds after the container has started before [probe] is initiated |
| worker.livenessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| worker.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| worker.livenessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| worker.name | string | `"worker"` | authentik worker name |
| worker.nodeSelector | object | `{}` (defaults to global.nodeSelector) | [Node selector] |
| worker.pdb.annotations | object | `{}` | Annotations to be added to the authentik worker pdb |
| worker.pdb.enabled | bool | `false` | Deploy a [PodDistrubtionBudget] for the authentik worker |
| worker.pdb.labels | object | `{}` | Labels to be added to the authentik worker pdb |
| worker.pdb.maxUnavailable | string | `""` | Number of pods that are unavailable after eviction as number or percentage (eg.: 50%) # Has higher precedence over `worker.pdb.minAvailable` |
| worker.pdb.minAvailable | string | `""` (defaults to 0 if not specified) | Number of pods that are available after eviction as number or percentage (eg.: 50%) |
| worker.podAnnotations | object | `{}` | Annotations to be added to the authentik worker pods |
| worker.podLabels | object | `{}` | Labels to be added to the authentik worker pods |
| worker.priorityClassName | string | `""` (defaults to global.priorityClassName) | Prority class for the authentik worker pods |
| worker.readinessProbe.exec.command[0] | string | `"ak"` |  |
| worker.readinessProbe.exec.command[1] | string | `"healthcheck"` |  |
| worker.readinessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| worker.readinessProbe.initialDelaySeconds | int | `5` | Number of seconds after the container has started before [probe] is initiated |
| worker.readinessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| worker.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| worker.readinessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| worker.replicas | int | `1` | The number of worker pods to run |
| worker.resources | object | `{}` | Resource limits and requests for the authentik worker |
| worker.securityContext | object | `{}` (See [values.yaml]) | authentik worker pod-level security context |
| worker.startupProbe.exec.command[0] | string | `"ak"` |  |
| worker.startupProbe.exec.command[1] | string | `"healthcheck"` |  |
| worker.startupProbe.failureThreshold | int | `60` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| worker.startupProbe.initialDelaySeconds | int | `30` | Number of seconds after the container has started before [probe] is initiated |
| worker.startupProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| worker.startupProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| worker.startupProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| worker.terminationGracePeriodSeconds | int | `30` | terminationGracePeriodSeconds for container lifecycle hook |
| worker.tolerations | list | `[]` (defaults to global.tolerations) | [Tolerations] for use with node taints |
| worker.topologySpreadConstraints | list | `[]` (defaults to global.topologySpreadConstraints) | Assign custom [TopologySpreadConstraints] rules to the authentik worker # Ref: https://kubernetes.io/docs/concepts/workloads/pods/pod-topology-spread-constraints/ # If labelSelector is left out, it will default to the labelSelector configuration of the deployment |
| worker.volumeMounts | list | `[]` | Additional volumeMounts to the authentik worker main container |
| worker.volumes | list | `[]` | Additional volumes to the authentik worker pod |

---
[affinity]: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/
[DNS configuration]: https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/
[HPA]: https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/
[MetricRelabelConfigs]: https://prometheus.io/docs/prometheus/latest/configuration/configuration/#metric_relabel_configs
[Node selector]: https://kubernetes.io/docs/user-guide/node-selection/
[PodDisruptionBudget]: https://kubernetes.io/docs/concepts/workloads/pods/disruptions/#pod-disruption-budgets
[probe]: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes
[RelabelConfigs]: https://prometheus.io/docs/prometheus/latest/configuration/configuration/#relabel_config
[Tolerations]: https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/
[TopologySpreadConstraints]: https://kubernetes.io/docs/concepts/workloads/pods/pod-topology-spread-constraints/
[values.yaml]: values.yaml
