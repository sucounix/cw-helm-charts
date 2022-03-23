{{- define "litespeed.fullname" -}}
{{- $name := default .Values.appID -}}
{{- printf "%s-%s" .Chart.Name $name  | trunc 63 | trimSuffix "-" -}}
{{- end -}}
