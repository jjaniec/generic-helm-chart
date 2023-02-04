# generic-application-chart

Generic application chart for kubernetes deployments for easier maintainability of many helm releases deploying the same components.

Depending on your architecture, additional components can easily be added in the chart's template, and the rolling upgrade of the chart can be done by bumping the generic chart's version

## Usage

[Helm](https://helm.sh) must be installed to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repo as follows:

```console
helm repo add jjaniec-generic-chart https://jjaniec.github.io/generic-helm-chart
```

You can then run `helm search repo jjaniec-generic-chart` to see the chart, pull it and use it as you like.

Chart documentation is available in the [generic-application-chart directory](./generic-application-chart/README.md).

## Usage as an OTS (Off the shelf) chart

For example, you can use the following `Chart.yaml` file to easily use this chart as a dependency of your application

```yaml
---
apiVersion: v2
description: your-application
name: your-application
version: 1.0.0
appVersion: 1.0.0
icon: https://helm.sh/img/helm.svg
maintainers: []
dependencies:
- name: "generic-helm-chart"
  repository: "https://jjaniec.github.io/generic-helm-chart"
  version: "1.0.0"
```

you'll then need to use the generic-helm-chart: key in the your value files to modify the values used by the generic chart

```yaml
generic-helm-chart:
  nameOverride: "my-application"
...
```
