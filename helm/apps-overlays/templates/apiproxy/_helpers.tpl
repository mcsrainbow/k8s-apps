{{- /*
global and apiproxy annotations
*/ -}}
{{- define "apiproxy.annotations" -}}
{{- $apiproxyAnnotations := merge (.Values.apiproxy.annotations | default (dict)) (.Values.global.annotations | default (dict)) -}}
annotations:
  {{- toYaml $apiproxyAnnotations | nindent 2 -}}
{{- end }}

{{- /*
global and apiproxy labels
*/ -}}
{{- define "apiproxy.labels" -}}
{{- $apiproxyLabels := merge (.Values.apiproxy.labels | default (dict)) (.Values.global.labels | default (dict)) -}}
labels:
  {{- toYaml $apiproxyLabels | nindent 2 -}}
{{- end }}

{{- /*
apiproxy selectorLabels
*/ -}}
{{- define "apiproxy.selectorLabels" -}}
{{- $apiproxySelectorLabels := .Values.apiproxy.labels -}}
{{- toYaml $apiproxySelectorLabels -}}
{{- end }}

{{- define "apiproxy.extraEnv" -}}
{{- $apiproxyExtraEnv := .Values.apiproxy.extraEnv | default (list) -}}
{{- toYaml $apiproxyExtraEnv -}}
{{- end }}
