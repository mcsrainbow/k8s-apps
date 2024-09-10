{{- /*
Combine global and apiproxy annotations
*/ -}}
{{- define "snippet.apiproxy.annotations" -}}
annotations:
{{- if .Values.global.annotations -}}
  {{- toYaml .Values.global.annotations | nindent 2 -}}
{{- end -}}
{{- if .Values.apiproxy.annotations -}}
  {{- toYaml .Values.apiproxy.annotations | nindent 2 -}}
{{- end -}}
{{- end }}

{{- /*
Combine global and apiproxy labels
*/ -}}
{{- define "snippet.apiproxy.labels" -}}
labels:
{{- if .Values.global.labels -}}
  {{- toYaml .Values.global.labels | nindent 2 -}}
{{- end -}}
{{- if .Values.apiproxy.labels -}}
  {{- toYaml .Values.apiproxy.labels | nindent 2 -}}
{{- end -}}
{{- end }}
