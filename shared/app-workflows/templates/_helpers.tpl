{{/*
Expand the name of the chart.
*/}}
{{- define "app-workflows.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "add-app-workflow.name" -}}
"{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}-add-app"
{{- end }}

{{- define "delete-app-workflow.name" -}}
"{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}-delete-app"
{{- end }}

{{- define "update-app-workflow.name" -}}
"{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}-update-app"
{{- end }}

{{- define "status-app-workflow.name" -}}
"{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}-update-status"
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "app-workflows.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "app-workflows.labels" -}}
helm.sh/chart: {{ include "app-workflows.chart" . }}
{{ include "app-workflows.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "app-workflows.selectorLabels" -}}
app.kubernetes.io/name: {{ include "app-workflows.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
