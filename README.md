# k8s-apps

## Manifests practice

```
manifests/apps-overlays
├── development
│   ├── bu-project-all.yaml
│   ├── bu-project-apiproxy.yaml
│   └── bu-project-webfront.yaml
├── production
│   ├── bu-project-all.yaml
│   ├── bu-project-apiproxy.yaml
│   └── bu-project-webfront.yaml
└── staging
    ├── bu-project-all.yaml
    ├── bu-project-apiproxy.yaml
    └── bu-project-webfront.yaml
```

## Kustomize practice

```
kustomize/apps-overlays
├── base
│   ├── apps
│   │   ├── apiproxy
│   │   │   ├── deployment.yaml
│   │   │   ├── ingress.yaml
│   │   │   ├── kustomization.yaml
│   │   │   └── service.yaml
│   │   └── webfront
│   │       ├── deployment.yaml
│   │       ├── ingress.yaml
│   │       ├── kustomization.yaml
│   │       └── service.yaml
│   ├── files
│   │   └── dockerconfigjson.encrypted
│   ├── kustomization.yaml
│   └── patches
│       └── imagePullSecrets.yaml
└── overlays
    ├── development
    │   ├── files
    │   │   └── nginx.conf
    │   └── kustomization.yaml
    ├── production
    │   ├── files
    │   │   └── nginx.conf
    │   └── kustomization.yaml
    └── staging
        ├── files
        │   └── nginx.conf
        └── kustomization.yaml
```

```bash
cd kustomize/apps-overlays
kustomize build overlays/development
kustomize build overlays/staging
kustomize build overlays/production
```

## Helm practice

```
helm/apps-overlays
├── Chart.yaml
├── files
│   ├── dockerconfigjson.encrypted
│   └── nginx.conf
├── templates
│   ├── apiproxy
│   │   ├── _helpers.tpl
│   │   ├── configmap.yaml
│   │   ├── deployment.yaml
│   │   ├── ingress.yaml
│   │   └── service.yaml
│   ├── secret.yaml
│   └── webfront
│       ├── _helpers.tpl
│       ├── deployment.yaml
│       ├── ingress.yaml
│       └── service.yaml
├── values
│   ├── development.yaml
│   ├── production.yaml
│   └── staging.yaml
└── values.yaml
```

```
cd helm/apps-overlays
helm template . -f values/development.yaml
helm template . -f values/staging.yaml
helm template . -f values/production.yaml
```