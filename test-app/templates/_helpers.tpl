{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "test-app.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "test-app.chart" -}}
{{- printf "%s-%s" .Chart.Name .Release.Name | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}