{{- define "wordpress.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- define "region.shortname" -}}
{{- get .Values.regionShort .Values.region -}}
{{- end -}}
{{- define "wordpress.hostname" -}}
{{- if eq .Values.env "prod" }}
{{- printf "%s.cloudwayssites.com" .Release.Name -}}
{{- else -}}
{{- printf "%s-%s-%s.cloudwayssites.com" .Release.Name (include "region.shortname" .) .Values.env -}}
{{- end -}}
{{- end -}}
