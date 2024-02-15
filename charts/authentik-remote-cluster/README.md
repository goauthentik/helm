<p align="center">
    <img src="https://goauthentik.io/img/icon_top_brand_colour.svg" height="150" alt="authentik logo">
</p>

---

[![](https://img.shields.io/discord/809154715984199690?label=Discord&style=for-the-badge)](https://goauthentik.io/discord)
![Version: 2.0.0](https://img.shields.io/badge/Version-2.0.0-informational?style=for-the-badge)
![AppVersion: 2024.2.0](https://img.shields.io/badge/AppVersion-2024.2.0-informational?style=for-the-badge)

RBAC required for a remote cluster to be connected to authentik.

**Homepage:** <https://goauthentik.io>

## Maintainers

| Name           | Email                  | Url                      |
| -------------- | ---------------------- | ------------------------ |
| authentik Team | <hello@goauthentik.io> | <https://goauthentik.io> |

## Source Code

-   <https://goauthentik.io/docs/>
-   <https://github.com/goauthentik/authentik>

## Values

| Key                          | Type   | Default | Description                                                                                       |
| ---------------------------- | ------ | ------- | ------------------------------------------------------------------------------------------------- |
| annotations                  | object | `{}`    | Annotations to apply to all resources                                                             |
| clusterRole.enabled          | bool   | `true`  | Create a clusterole in addition to a namespaced role.                                             |
| fullnameOverride             | string | `""`    | String to fully override `"authentik.fullname"`. Prefer using global.fullnameOverride if possible |
| global.additionalLabels      | object | `{}`    | Common labels for all resources.                                                                  |
| global.fullnameOverride      | string | `""`    | String to fully override `"authentik.fullname"`                                                   |
| global.nameOverride          | string | `""`    | Provide a name in place of `authentik`                                                            |
| kubeVersionOverride          | string | `""`    | Override the Kubernetes version, which is used to evaluate certain manifests                      |
| nameOverride                 | string | `""`    | Provide a name in place of `authentik`. Prefer using global.nameOverride if possible              |
| serviceAccountSecret.enabled | bool   | `true`  | Create a secret with the service account credentials                                              |
