{{- /*
Combine global and webfront annotations
*/ -}}
{{- define "snippet.webfront.annotations" -}}
annotations:
{{- if .Values.global.annotations -}}
  {{- toYaml .Values.global.annotations | nindent 2 -}}
{{- end -}}
{{- if .Values.webfront.annotations -}}
  {{- toYaml .Values.webfront.annotations | nindent 2 -}}
{{- end -}}
{{- end }}

{{- /*
Combine global and webfront labels
*/ -}}
{{- define "snippet.webfront.labels" -}}
labels:
{{- if .Values.global.labels -}}
  {{- toYaml .Values.global.labels | nindent 2 -}}
{{- end -}}
{{- if .Values.webfront.labels -}}
  {{- toYaml .Values.webfront.labels | nindent 2 -}}
{{- end -}}
{{- end }}