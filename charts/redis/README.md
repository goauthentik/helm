# redis

![Version: 15.7.6](https://img.shields.io/badge/Version-15.7.6-informational?style=flat-square) ![AppVersion: 6.2.6](https://img.shields.io/badge/AppVersion-6.2.6-informational?style=flat-square)

Open source, advanced key-value store. It is often referred to as a data structure server since keys can contain strings, hashes, lists, sets and sorted sets.

**Homepage:** <https://github.com/bitnami/charts/tree/master/bitnami/redis>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Bitnami | <containers@bitnami.com> |  |
| desaintmartin | <cedric@desaintmartin.fr> |  |

## Source Code

* <https://github.com/bitnami/bitnami-docker-redis>
* <http://redis.io/>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | common | 1.x.x |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| architecture | string | `"replication"` |  |
| auth.enabled | bool | `true` |  |
| auth.existingSecret | string | `""` |  |
| auth.existingSecretPasswordKey | string | `""` |  |
| auth.password | string | `""` |  |
| auth.sentinel | bool | `true` |  |
| auth.usePasswordFiles | bool | `false` |  |
| clusterDomain | string | `"cluster.local"` |  |
| commonAnnotations | object | `{}` |  |
| commonConfiguration | string | `"# Enable AOF https://redis.io/topics/persistence#append-only-file\nappendonly yes\n# Disable RDB persistence, AOF persistence already enabled.\nsave \"\""` |  |
| commonLabels | object | `{}` |  |
| diagnosticMode.args[0] | string | `"infinity"` |  |
| diagnosticMode.command[0] | string | `"sleep"` |  |
| diagnosticMode.enabled | bool | `false` |  |
| existingConfigmap | string | `""` |  |
| extraDeploy | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| global.imagePullSecrets | list | `[]` |  |
| global.imageRegistry | string | `""` |  |
| global.redis.password | string | `""` |  |
| global.storageClass | string | `""` |  |
| image.debug | bool | `false` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"bitnami/redis"` |  |
| image.tag | string | `"6.2.6-debian-10-r97"` |  |
| kubeVersion | string | `""` |  |
| master.affinity | object | `{}` |  |
| master.args | list | `[]` |  |
| master.command | list | `[]` |  |
| master.configuration | string | `""` |  |
| master.containerPort | int | `6379` |  |
| master.containerSecurityContext.enabled | bool | `true` |  |
| master.containerSecurityContext.runAsUser | int | `1001` |  |
| master.customLivenessProbe | object | `{}` |  |
| master.customReadinessProbe | object | `{}` |  |
| master.disableCommands[0] | string | `"FLUSHDB"` |  |
| master.disableCommands[1] | string | `"FLUSHALL"` |  |
| master.extraEnvVars | list | `[]` |  |
| master.extraEnvVarsCM | string | `""` |  |
| master.extraEnvVarsSecret | string | `""` |  |
| master.extraFlags | list | `[]` |  |
| master.extraVolumeMounts | list | `[]` |  |
| master.extraVolumes | list | `[]` |  |
| master.hostAliases | list | `[]` |  |
| master.initContainers | list | `[]` |  |
| master.lifecycleHooks | object | `{}` |  |
| master.livenessProbe.enabled | bool | `true` |  |
| master.livenessProbe.failureThreshold | int | `5` |  |
| master.livenessProbe.initialDelaySeconds | int | `20` |  |
| master.livenessProbe.periodSeconds | int | `5` |  |
| master.livenessProbe.successThreshold | int | `1` |  |
| master.livenessProbe.timeoutSeconds | int | `5` |  |
| master.nodeAffinityPreset.key | string | `""` |  |
| master.nodeAffinityPreset.type | string | `""` |  |
| master.nodeAffinityPreset.values | list | `[]` |  |
| master.nodeSelector | object | `{}` |  |
| master.persistence.accessModes[0] | string | `"ReadWriteOnce"` |  |
| master.persistence.annotations | object | `{}` |  |
| master.persistence.dataSource | object | `{}` |  |
| master.persistence.enabled | bool | `true` |  |
| master.persistence.existingClaim | string | `""` |  |
| master.persistence.medium | string | `""` |  |
| master.persistence.path | string | `"/data"` |  |
| master.persistence.selector | object | `{}` |  |
| master.persistence.size | string | `"8Gi"` |  |
| master.persistence.storageClass | string | `""` |  |
| master.persistence.subPath | string | `""` |  |
| master.podAffinityPreset | string | `""` |  |
| master.podAnnotations | object | `{}` |  |
| master.podAntiAffinityPreset | string | `"soft"` |  |
| master.podLabels | object | `{}` |  |
| master.podSecurityContext.enabled | bool | `true` |  |
| master.podSecurityContext.fsGroup | int | `1001` |  |
| master.preExecCmds | list | `[]` |  |
| master.priorityClassName | string | `""` |  |
| master.readinessProbe.enabled | bool | `true` |  |
| master.readinessProbe.failureThreshold | int | `5` |  |
| master.readinessProbe.initialDelaySeconds | int | `20` |  |
| master.readinessProbe.periodSeconds | int | `5` |  |
| master.readinessProbe.successThreshold | int | `1` |  |
| master.readinessProbe.timeoutSeconds | int | `1` |  |
| master.resources.limits | object | `{}` |  |
| master.resources.requests | object | `{}` |  |
| master.schedulerName | string | `""` |  |
| master.service.annotations | object | `{}` |  |
| master.service.clusterIP | string | `""` |  |
| master.service.externalTrafficPolicy | string | `"Cluster"` |  |
| master.service.loadBalancerIP | string | `""` |  |
| master.service.loadBalancerSourceRanges | list | `[]` |  |
| master.service.nodePort | string | `""` |  |
| master.service.port | int | `6379` |  |
| master.service.type | string | `"ClusterIP"` |  |
| master.shareProcessNamespace | bool | `false` |  |
| master.sidecars | list | `[]` |  |
| master.spreadConstraints | list | `[]` |  |
| master.terminationGracePeriodSeconds | int | `30` |  |
| master.tolerations | list | `[]` |  |
| master.updateStrategy.rollingUpdate | object | `{}` |  |
| master.updateStrategy.type | string | `"RollingUpdate"` |  |
| metrics.containerSecurityContext.enabled | bool | `true` |  |
| metrics.containerSecurityContext.runAsUser | int | `1001` |  |
| metrics.enabled | bool | `false` |  |
| metrics.extraArgs | object | `{}` |  |
| metrics.extraVolumeMounts | list | `[]` |  |
| metrics.extraVolumes | list | `[]` |  |
| metrics.image.pullPolicy | string | `"IfNotPresent"` |  |
| metrics.image.pullSecrets | list | `[]` |  |
| metrics.image.registry | string | `"docker.io"` |  |
| metrics.image.repository | string | `"bitnami/redis-exporter"` |  |
| metrics.image.tag | string | `"1.33.0-debian-10-r21"` |  |
| metrics.podAnnotations."prometheus.io/port" | string | `"9121"` |  |
| metrics.podAnnotations."prometheus.io/scrape" | string | `"true"` |  |
| metrics.podLabels | object | `{}` |  |
| metrics.prometheusRule.additionalLabels | object | `{}` |  |
| metrics.prometheusRule.enabled | bool | `false` |  |
| metrics.prometheusRule.namespace | string | `""` |  |
| metrics.prometheusRule.rules | list | `[]` |  |
| metrics.redisTargetHost | string | `"localhost"` |  |
| metrics.resources.limits | object | `{}` |  |
| metrics.resources.requests | object | `{}` |  |
| metrics.service.annotations | object | `{}` |  |
| metrics.service.externalTrafficPolicy | string | `"Cluster"` |  |
| metrics.service.loadBalancerIP | string | `""` |  |
| metrics.service.loadBalancerSourceRanges | list | `[]` |  |
| metrics.service.port | int | `9121` |  |
| metrics.service.type | string | `"ClusterIP"` |  |
| metrics.serviceMonitor.additionalLabels | object | `{}` |  |
| metrics.serviceMonitor.enabled | bool | `false` |  |
| metrics.serviceMonitor.honorLabels | bool | `false` |  |
| metrics.serviceMonitor.interval | string | `"30s"` |  |
| metrics.serviceMonitor.metricRelabelings | list | `[]` |  |
| metrics.serviceMonitor.namespace | string | `""` |  |
| metrics.serviceMonitor.relabellings | list | `[]` |  |
| metrics.serviceMonitor.scrapeTimeout | string | `""` |  |
| nameOverride | string | `""` |  |
| networkPolicy.allowExternal | bool | `true` |  |
| networkPolicy.enabled | bool | `false` |  |
| networkPolicy.extraEgress | list | `[]` |  |
| networkPolicy.extraIngress | list | `[]` |  |
| networkPolicy.ingressNSMatchLabels | object | `{}` |  |
| networkPolicy.ingressNSPodMatchLabels | object | `{}` |  |
| pdb.create | bool | `false` |  |
| pdb.maxUnavailable | string | `""` |  |
| pdb.minAvailable | int | `1` |  |
| podSecurityPolicy.create | bool | `false` |  |
| podSecurityPolicy.enabled | bool | `false` |  |
| rbac.create | bool | `false` |  |
| rbac.rules | list | `[]` |  |
| replica.affinity | object | `{}` |  |
| replica.args | list | `[]` |  |
| replica.autoscaling.enabled | bool | `false` |  |
| replica.autoscaling.maxReplicas | int | `11` |  |
| replica.autoscaling.minReplicas | int | `1` |  |
| replica.autoscaling.targetCPU | string | `""` |  |
| replica.autoscaling.targetMemory | string | `""` |  |
| replica.command | list | `[]` |  |
| replica.configuration | string | `""` |  |
| replica.containerPort | int | `6379` |  |
| replica.containerSecurityContext.enabled | bool | `true` |  |
| replica.containerSecurityContext.runAsUser | int | `1001` |  |
| replica.customLivenessProbe | object | `{}` |  |
| replica.customReadinessProbe | object | `{}` |  |
| replica.disableCommands[0] | string | `"FLUSHDB"` |  |
| replica.disableCommands[1] | string | `"FLUSHALL"` |  |
| replica.extraEnvVars | list | `[]` |  |
| replica.extraEnvVarsCM | string | `""` |  |
| replica.extraEnvVarsSecret | string | `""` |  |
| replica.extraFlags | list | `[]` |  |
| replica.extraVolumeMounts | list | `[]` |  |
| replica.extraVolumes | list | `[]` |  |
| replica.hostAliases | list | `[]` |  |
| replica.initContainers | list | `[]` |  |
| replica.lifecycleHooks | object | `{}` |  |
| replica.livenessProbe.enabled | bool | `true` |  |
| replica.livenessProbe.failureThreshold | int | `5` |  |
| replica.livenessProbe.initialDelaySeconds | int | `20` |  |
| replica.livenessProbe.periodSeconds | int | `5` |  |
| replica.livenessProbe.successThreshold | int | `1` |  |
| replica.livenessProbe.timeoutSeconds | int | `5` |  |
| replica.nodeAffinityPreset.key | string | `""` |  |
| replica.nodeAffinityPreset.type | string | `""` |  |
| replica.nodeAffinityPreset.values | list | `[]` |  |
| replica.nodeSelector | object | `{}` |  |
| replica.persistence.accessModes[0] | string | `"ReadWriteOnce"` |  |
| replica.persistence.annotations | object | `{}` |  |
| replica.persistence.dataSource | object | `{}` |  |
| replica.persistence.enabled | bool | `true` |  |
| replica.persistence.medium | string | `""` |  |
| replica.persistence.path | string | `"/data"` |  |
| replica.persistence.selector | object | `{}` |  |
| replica.persistence.size | string | `"8Gi"` |  |
| replica.persistence.storageClass | string | `""` |  |
| replica.persistence.subPath | string | `""` |  |
| replica.podAffinityPreset | string | `""` |  |
| replica.podAnnotations | object | `{}` |  |
| replica.podAntiAffinityPreset | string | `"soft"` |  |
| replica.podLabels | object | `{}` |  |
| replica.podSecurityContext.enabled | bool | `true` |  |
| replica.podSecurityContext.fsGroup | int | `1001` |  |
| replica.preExecCmds | list | `[]` |  |
| replica.priorityClassName | string | `""` |  |
| replica.readinessProbe.enabled | bool | `true` |  |
| replica.readinessProbe.failureThreshold | int | `5` |  |
| replica.readinessProbe.initialDelaySeconds | int | `20` |  |
| replica.readinessProbe.periodSeconds | int | `5` |  |
| replica.readinessProbe.successThreshold | int | `1` |  |
| replica.readinessProbe.timeoutSeconds | int | `1` |  |
| replica.replicaCount | int | `3` |  |
| replica.resources.limits | object | `{}` |  |
| replica.resources.requests | object | `{}` |  |
| replica.schedulerName | string | `""` |  |
| replica.service.annotations | object | `{}` |  |
| replica.service.clusterIP | string | `""` |  |
| replica.service.externalTrafficPolicy | string | `"Cluster"` |  |
| replica.service.loadBalancerIP | string | `""` |  |
| replica.service.loadBalancerSourceRanges | list | `[]` |  |
| replica.service.nodePort | string | `""` |  |
| replica.service.port | int | `6379` |  |
| replica.service.type | string | `"ClusterIP"` |  |
| replica.shareProcessNamespace | bool | `false` |  |
| replica.sidecars | list | `[]` |  |
| replica.spreadConstraints | list | `[]` |  |
| replica.terminationGracePeriodSeconds | int | `30` |  |
| replica.tolerations | list | `[]` |  |
| replica.updateStrategy.rollingUpdate | object | `{}` |  |
| replica.updateStrategy.type | string | `"RollingUpdate"` |  |
| sentinel.args | list | `[]` |  |
| sentinel.automateClusterRecovery | bool | `false` |  |
| sentinel.command | list | `[]` |  |
| sentinel.configuration | string | `""` |  |
| sentinel.containerPort | int | `26379` |  |
| sentinel.containerSecurityContext.enabled | bool | `true` |  |
| sentinel.containerSecurityContext.runAsUser | int | `1001` |  |
| sentinel.customLivenessProbe | object | `{}` |  |
| sentinel.customReadinessProbe | object | `{}` |  |
| sentinel.downAfterMilliseconds | int | `60000` |  |
| sentinel.enabled | bool | `false` |  |
| sentinel.extraEnvVars | list | `[]` |  |
| sentinel.extraEnvVarsCM | string | `""` |  |
| sentinel.extraEnvVarsSecret | string | `""` |  |
| sentinel.extraVolumeMounts | list | `[]` |  |
| sentinel.extraVolumes | list | `[]` |  |
| sentinel.failoverTimeout | int | `18000` |  |
| sentinel.image.debug | bool | `false` |  |
| sentinel.image.pullPolicy | string | `"IfNotPresent"` |  |
| sentinel.image.pullSecrets | list | `[]` |  |
| sentinel.image.registry | string | `"docker.io"` |  |
| sentinel.image.repository | string | `"bitnami/redis-sentinel"` |  |
| sentinel.image.tag | string | `"6.2.6-debian-10-r95"` |  |
| sentinel.lifecycleHooks | object | `{}` |  |
| sentinel.livenessProbe.enabled | bool | `true` |  |
| sentinel.livenessProbe.failureThreshold | int | `5` |  |
| sentinel.livenessProbe.initialDelaySeconds | int | `20` |  |
| sentinel.livenessProbe.periodSeconds | int | `5` |  |
| sentinel.livenessProbe.successThreshold | int | `1` |  |
| sentinel.livenessProbe.timeoutSeconds | int | `5` |  |
| sentinel.masterSet | string | `"mymaster"` |  |
| sentinel.parallelSyncs | int | `1` |  |
| sentinel.preExecCmds | list | `[]` |  |
| sentinel.quorum | int | `2` |  |
| sentinel.readinessProbe.enabled | bool | `true` |  |
| sentinel.readinessProbe.failureThreshold | int | `5` |  |
| sentinel.readinessProbe.initialDelaySeconds | int | `20` |  |
| sentinel.readinessProbe.periodSeconds | int | `5` |  |
| sentinel.readinessProbe.successThreshold | int | `1` |  |
| sentinel.readinessProbe.timeoutSeconds | int | `1` |  |
| sentinel.resources.limits | object | `{}` |  |
| sentinel.resources.requests | object | `{}` |  |
| sentinel.service.annotations | object | `{}` |  |
| sentinel.service.clusterIP | string | `""` |  |
| sentinel.service.externalTrafficPolicy | string | `"Cluster"` |  |
| sentinel.service.loadBalancerIP | string | `""` |  |
| sentinel.service.loadBalancerSourceRanges | list | `[]` |  |
| sentinel.service.nodePorts.redis | string | `""` |  |
| sentinel.service.nodePorts.sentinel | string | `""` |  |
| sentinel.service.port | int | `6379` |  |
| sentinel.service.sentinelPort | int | `26379` |  |
| sentinel.service.type | string | `"ClusterIP"` |  |
| sentinel.terminationGracePeriodSeconds | int | `30` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automountServiceAccountToken | bool | `true` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| sysctl.command | list | `[]` |  |
| sysctl.enabled | bool | `false` |  |
| sysctl.image.pullPolicy | string | `"IfNotPresent"` |  |
| sysctl.image.pullSecrets | list | `[]` |  |
| sysctl.image.registry | string | `"docker.io"` |  |
| sysctl.image.repository | string | `"bitnami/bitnami-shell"` |  |
| sysctl.image.tag | string | `"10-debian-10-r307"` |  |
| sysctl.mountHostSys | bool | `false` |  |
| sysctl.resources.limits | object | `{}` |  |
| sysctl.resources.requests | object | `{}` |  |
| tls.authClients | bool | `true` |  |
| tls.autoGenerated | bool | `false` |  |
| tls.certCAFilename | string | `""` |  |
| tls.certFilename | string | `""` |  |
| tls.certKeyFilename | string | `""` |  |
| tls.certificatesSecret | string | `""` |  |
| tls.dhParamsFilename | string | `""` |  |
| tls.enabled | bool | `false` |  |
| tls.existingSecret | string | `""` |  |
| volumePermissions.containerSecurityContext.runAsUser | int | `0` |  |
| volumePermissions.enabled | bool | `false` |  |
| volumePermissions.image.pullPolicy | string | `"IfNotPresent"` |  |
| volumePermissions.image.pullSecrets | list | `[]` |  |
| volumePermissions.image.registry | string | `"docker.io"` |  |
| volumePermissions.image.repository | string | `"bitnami/bitnami-shell"` |  |
| volumePermissions.image.tag | string | `"10-debian-10-r307"` |  |
| volumePermissions.resources.limits | object | `{}` |  |
| volumePermissions.resources.requests | object | `{}` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
