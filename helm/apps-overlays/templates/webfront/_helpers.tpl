{{- /*
global and webfront annotations
*/ -}}
{{- define "webfront.annotations" -}}
{{- $webfrontAnnotations := merge (.Values.webfront.annotations | default (dict)) (.Values.global.annotations | default (dict)) -}}
annotations:
  {{- toYaml $webfrontAnnotations | nindent 2 -}}
{{- end }}

{{- /*
global and webfront labels
*/ -}}
{{- define "webfront.labels" -}}
{{- $webfrontLabels := merge (.Values.webfront.labels | default (dict)) (.Values.global.labels | default (dict)) -}}
labels:
  {{- toYaml $webfrontLabels | nindent 2 -}}
{{- end }}

{{- /*
webfront selectorLabels
*/ -}}
{{- define "webfront.selectorLabels" -}}
{{- $webfrontSelectorLabels := .Values.webfront.labels -}}
{{- toYaml $webfrontSelectorLabels -}}
{{- end }}

{{- define "webfront.extraEnv" -}}
{{- $webfrontExtraEnv := .Values.webfront.extraEnv | default (list) -}}
{{- toYaml $webfrontExtraEnv -}}
{{- end }}
