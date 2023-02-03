{{- define "generic.labels" -}}
labels:
  app: {{ include "app.name" $ }}
  env: {{ include "datadog.env" $ }}
  version: {{ coalesce .Values.appVersionOverride .Values.image.tag }}
  app.kubernetes.io/name: {{ coalesce .Values.appNameLabelOverride ( include "app.name" $ ) }}
  app.kubernetes.io/version: {{ coalesce .Values.appVersionOverride .Values.image.tag }}
  helm.sh/chart: {{ include "app.chart" $ }}
  app.kubernetes.io/instance: {{ coalesce .Values.appInstanceLabelOverride $.Release.Name }}
  app.kubernetes.io/managed-by: {{ $.Release.Service }}
{{- end }}
