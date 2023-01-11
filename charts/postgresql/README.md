# postgresql

![Version: 10.16.2](https://img.shields.io/badge/Version-10.16.2-informational?style=flat-square) ![AppVersion: 11.14.0](https://img.shields.io/badge/AppVersion-11.14.0-informational?style=flat-square)

Chart for PostgreSQL, an object-relational database management system (ORDBMS) with an emphasis on extensibility and on standards-compliance.

**Homepage:** <https://github.com/bitnami/charts/tree/master/bitnami/postgresql>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Bitnami | <containers@bitnami.com> |  |
| desaintmartin | <cedric@desaintmartin.fr> |  |

## Source Code

* <https://github.com/bitnami/bitnami-docker-postgresql>
* <https://www.postgresql.org/>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | common | 1.x.x |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| audit.clientMinMessages | string | `"error"` |  |
| audit.logConnections | bool | `false` |  |
| audit.logDisconnections | bool | `false` |  |
| audit.logHostname | bool | `false` |  |
| audit.logLinePrefix | string | `""` |  |
| audit.logTimezone | string | `""` |  |
| audit.pgAuditLog | string | `""` |  |
| audit.pgAuditLogCatalog | string | `"off"` |  |
| commonAnnotations | object | `{}` |  |
| commonLabels | object | `{}` |  |
| configurationConfigMap | string | `""` |  |
| containerPorts.postgresql | int | `5432` |  |
| containerSecurityContext.enabled | bool | `true` |  |
| containerSecurityContext.runAsUser | int | `1001` |  |
| customLivenessProbe | object | `{}` |  |
| customReadinessProbe | object | `{}` |  |
| customStartupProbe | object | `{}` |  |
| diagnosticMode.args[0] | string | `"infinity"` |  |
| diagnosticMode.command[0] | string | `"sleep"` |  |
| diagnosticMode.enabled | bool | `false` |  |
| existingSecret | string | `""` |  |
| extendedConfConfigMap | string | `""` |  |
| extraDeploy | list | `[]` |  |
| extraEnv | list | `[]` |  |
| extraEnvVarsCM | string | `""` |  |
| fullnameOverride | string | `""` |  |
| global.imagePullSecrets | list | `[]` |  |
| global.imageRegistry | string | `""` |  |
| global.postgresql.existingSecret | string | `""` |  |
| global.postgresql.postgresqlDatabase | string | `""` |  |
| global.postgresql.postgresqlPassword | string | `""` |  |
| global.postgresql.postgresqlUsername | string | `""` |  |
| global.postgresql.replicationPassword | string | `""` |  |
| global.postgresql.servicePort | string | `""` |  |
| global.storageClass | string | `""` |  |
| image.debug | bool | `false` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"bitnami/postgresql"` |  |
| image.tag | string | `"11.14.0-debian-10-r28"` |  |
| initdbPassword | string | `""` |  |
| initdbScripts | object | `{}` |  |
| initdbScriptsConfigMap | string | `""` |  |
| initdbScriptsSecret | string | `""` |  |
| initdbUser | string | `""` |  |
| ldap.baseDN | string | `""` |  |
| ldap.bindDN | string | `""` |  |
| ldap.bind_password | string | `""` |  |
| ldap.enabled | bool | `false` |  |
| ldap.port | string | `""` |  |
| ldap.prefix | string | `""` |  |
| ldap.scheme | string | `""` |  |
| ldap.search_attr | string | `""` |  |
| ldap.search_filter | string | `""` |  |
| ldap.server | string | `""` |  |
| ldap.suffix | string | `""` |  |
| ldap.tls | string | `""` |  |
| ldap.url | string | `""` |  |
| lifecycleHooks | object | `{}` |  |
| livenessProbe.enabled | bool | `true` |  |
| livenessProbe.failureThreshold | int | `6` |  |
| livenessProbe.initialDelaySeconds | int | `30` |  |
| livenessProbe.periodSeconds | int | `10` |  |
| livenessProbe.successThreshold | int | `1` |  |
| livenessProbe.timeoutSeconds | int | `5` |  |
| metrics.customMetrics | object | `{}` |  |
| metrics.enabled | bool | `false` |  |
| metrics.extraEnvVars | list | `[]` |  |
| metrics.image.pullPolicy | string | `"IfNotPresent"` |  |
| metrics.image.pullSecrets | list | `[]` |  |
| metrics.image.registry | string | `"docker.io"` |  |
| metrics.image.repository | string | `"bitnami/postgres-exporter"` |  |
| metrics.image.tag | string | `"0.10.0-debian-10-r172"` |  |
| metrics.livenessProbe.enabled | bool | `true` |  |
| metrics.livenessProbe.failureThreshold | int | `6` |  |
| metrics.livenessProbe.initialDelaySeconds | int | `5` |  |
| metrics.livenessProbe.periodSeconds | int | `10` |  |
| metrics.livenessProbe.successThreshold | int | `1` |  |
| metrics.livenessProbe.timeoutSeconds | int | `5` |  |
| metrics.prometheusRule.additionalLabels | object | `{}` |  |
| metrics.prometheusRule.enabled | bool | `false` |  |
| metrics.prometheusRule.namespace | string | `""` |  |
| metrics.prometheusRule.rules | list | `[]` |  |
| metrics.readinessProbe.enabled | bool | `true` |  |
| metrics.readinessProbe.failureThreshold | int | `6` |  |
| metrics.readinessProbe.initialDelaySeconds | int | `5` |  |
| metrics.readinessProbe.periodSeconds | int | `10` |  |
| metrics.readinessProbe.successThreshold | int | `1` |  |
| metrics.readinessProbe.timeoutSeconds | int | `5` |  |
| metrics.resources | object | `{}` |  |
| metrics.securityContext.enabled | bool | `false` |  |
| metrics.securityContext.runAsUser | int | `1001` |  |
| metrics.service.annotations."prometheus.io/port" | string | `"9187"` |  |
| metrics.service.annotations."prometheus.io/scrape" | string | `"true"` |  |
| metrics.service.loadBalancerIP | string | `""` |  |
| metrics.service.type | string | `"ClusterIP"` |  |
| metrics.serviceMonitor.additionalLabels | object | `{}` |  |
| metrics.serviceMonitor.enabled | bool | `false` |  |
| metrics.serviceMonitor.interval | string | `""` |  |
| metrics.serviceMonitor.metricRelabelings | list | `[]` |  |
| metrics.serviceMonitor.namespace | string | `""` |  |
| metrics.serviceMonitor.relabelings | list | `[]` |  |
| metrics.serviceMonitor.scrapeTimeout | string | `""` |  |
| nameOverride | string | `""` |  |
| networkPolicy.allowExternal | bool | `true` |  |
| networkPolicy.enabled | bool | `false` |  |
| networkPolicy.explicitNamespacesSelector | object | `{}` |  |
| persistence.accessModes[0] | string | `"ReadWriteOnce"` |  |
| persistence.annotations | object | `{}` |  |
| persistence.enabled | bool | `true` |  |
| persistence.existingClaim | string | `""` |  |
| persistence.mountPath | string | `"/bitnami/postgresql"` |  |
| persistence.selector | object | `{}` |  |
| persistence.size | string | `"8Gi"` |  |
| persistence.snapshotName | string | `""` |  |
| persistence.storageClass | string | `""` |  |
| persistence.subPath | string | `""` |  |
| pgHbaConfiguration | string | `""` |  |
| postgresqlConfiguration | object | `{}` |  |
| postgresqlDataDir | string | `"/bitnami/postgresql/data"` |  |
| postgresqlDatabase | string | `""` |  |
| postgresqlDbUserConnectionLimit | string | `""` |  |
| postgresqlExtendedConf | object | `{}` |  |
| postgresqlInitdbArgs | string | `""` |  |
| postgresqlInitdbWalDir | string | `""` |  |
| postgresqlMaxConnections | string | `""` |  |
| postgresqlPassword | string | `""` |  |
| postgresqlPghbaRemoveFilters | string | `""` |  |
| postgresqlPostgresConnectionLimit | string | `""` |  |
| postgresqlPostgresPassword | string | `""` |  |
| postgresqlSharedPreloadLibraries | string | `"pgaudit"` |  |
| postgresqlStatementTimeout | string | `""` |  |
| postgresqlTcpKeepalivesCount | string | `""` |  |
| postgresqlTcpKeepalivesIdle | string | `""` |  |
| postgresqlTcpKeepalivesInterval | string | `""` |  |
| postgresqlUsername | string | `"postgres"` |  |
| primary.affinity | object | `{}` |  |
| primary.annotations | object | `{}` |  |
| primary.extraInitContainers | list | `[]` |  |
| primary.extraPodSpec | object | `{}` |  |
| primary.extraVolumeMounts | list | `[]` |  |
| primary.extraVolumes | list | `[]` |  |
| primary.labels | object | `{}` |  |
| primary.nodeAffinityPreset.key | string | `""` |  |
| primary.nodeAffinityPreset.type | string | `""` |  |
| primary.nodeAffinityPreset.values | list | `[]` |  |
| primary.nodeSelector | object | `{}` |  |
| primary.podAffinityPreset | string | `""` |  |
| primary.podAnnotations | object | `{}` |  |
| primary.podAntiAffinityPreset | string | `"soft"` |  |
| primary.podLabels | object | `{}` |  |
| primary.priorityClassName | string | `""` |  |
| primary.service.clusterIP | string | `""` |  |
| primary.service.nodePort | string | `""` |  |
| primary.service.type | string | `""` |  |
| primary.sidecars | list | `[]` |  |
| primary.tolerations | list | `[]` |  |
| primaryAsStandBy.enabled | bool | `false` |  |
| primaryAsStandBy.primaryHost | string | `""` |  |
| primaryAsStandBy.primaryPort | string | `""` |  |
| psp.create | bool | `false` |  |
| rbac.create | bool | `false` |  |
| readReplicas.affinity | object | `{}` |  |
| readReplicas.annotations | object | `{}` |  |
| readReplicas.extraInitContainers | list | `[]` |  |
| readReplicas.extraPodSpec | object | `{}` |  |
| readReplicas.extraVolumeMounts | list | `[]` |  |
| readReplicas.extraVolumes | list | `[]` |  |
| readReplicas.labels | object | `{}` |  |
| readReplicas.nodeAffinityPreset.key | string | `""` |  |
| readReplicas.nodeAffinityPreset.type | string | `""` |  |
| readReplicas.nodeAffinityPreset.values | list | `[]` |  |
| readReplicas.nodeSelector | object | `{}` |  |
| readReplicas.persistence.enabled | bool | `true` |  |
| readReplicas.podAffinityPreset | string | `""` |  |
| readReplicas.podAnnotations | object | `{}` |  |
| readReplicas.podAntiAffinityPreset | string | `"soft"` |  |
| readReplicas.podLabels | object | `{}` |  |
| readReplicas.priorityClassName | string | `""` |  |
| readReplicas.resources | object | `{}` |  |
| readReplicas.service.clusterIP | string | `""` |  |
| readReplicas.service.nodePort | string | `""` |  |
| readReplicas.service.type | string | `""` |  |
| readReplicas.sidecars | list | `[]` |  |
| readReplicas.tolerations | list | `[]` |  |
| readReplicas.topologySpreadConstraints | list | `[]` |  |
| readinessProbe.enabled | bool | `true` |  |
| readinessProbe.failureThreshold | int | `6` |  |
| readinessProbe.initialDelaySeconds | int | `5` |  |
| readinessProbe.periodSeconds | int | `10` |  |
| readinessProbe.successThreshold | int | `1` |  |
| readinessProbe.timeoutSeconds | int | `5` |  |
| replication.applicationName | string | `"my_application"` |  |
| replication.enabled | bool | `false` |  |
| replication.numSynchronousReplicas | int | `0` |  |
| replication.password | string | `"repl_password"` |  |
| replication.readReplicas | int | `1` |  |
| replication.singleService | bool | `true` |  |
| replication.synchronousCommit | string | `"off"` |  |
| replication.uniqueServices | bool | `false` |  |
| replication.user | string | `"repl_user"` |  |
| resources.requests.cpu | string | `"250m"` |  |
| resources.requests.memory | string | `"256Mi"` |  |
| schedulerName | string | `""` |  |
| securityContext.enabled | bool | `true` |  |
| securityContext.fsGroup | int | `1001` |  |
| service.annotations | object | `{}` |  |
| service.clusterIP | string | `""` |  |
| service.externalTrafficPolicy | string | `"Cluster"` |  |
| service.loadBalancerIP | string | `""` |  |
| service.loadBalancerSourceRanges | list | `[]` |  |
| service.nodePort | string | `""` |  |
| service.port | int | `5432` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.autoMount | bool | `false` |  |
| serviceAccount.enabled | bool | `false` |  |
| serviceAccount.name | string | `""` |  |
| shmVolume.chmod.enabled | bool | `true` |  |
| shmVolume.enabled | bool | `true` |  |
| shmVolume.sizeLimit | string | `""` |  |
| startupProbe.enabled | bool | `false` |  |
| startupProbe.failureThreshold | int | `10` |  |
| startupProbe.initialDelaySeconds | int | `30` |  |
| startupProbe.periodSeconds | int | `15` |  |
| startupProbe.successThreshold | int | `1` |  |
| startupProbe.timeoutSeconds | int | `5` |  |
| terminationGracePeriodSeconds | string | `""` |  |
| tls.autoGenerated | bool | `false` |  |
| tls.certCAFilename | string | `""` |  |
| tls.certFilename | string | `""` |  |
| tls.certKeyFilename | string | `""` |  |
| tls.certificatesSecret | string | `""` |  |
| tls.crlFilename | string | `""` |  |
| tls.enabled | bool | `false` |  |
| tls.preferServerCiphers | bool | `true` |  |
| updateStrategy.type | string | `"RollingUpdate"` |  |
| usePasswordFile | bool | `false` |  |
| volumePermissions.enabled | bool | `false` |  |
| volumePermissions.image.pullPolicy | string | `"IfNotPresent"` |  |
| volumePermissions.image.pullSecrets | list | `[]` |  |
| volumePermissions.image.registry | string | `"docker.io"` |  |
| volumePermissions.image.repository | string | `"bitnami/bitnami-shell"` |  |
| volumePermissions.image.tag | string | `"10-debian-10-r305"` |  |
| volumePermissions.securityContext.runAsUser | int | `0` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
