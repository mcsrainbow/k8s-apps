# k8s-apps

## Kustomize Practice

```
kustomize
├── base
│   ├── apps
│   │   ├── apiproxy
│   │   │   ├── deployment.yaml
│   │   │   ├── ingress.yaml
│   │   │   ├── kustomization.yaml
│   │   │   └── service.yaml
│   │   └── webfront
│   │       ├── deployment.yaml
│   │       ├── ingress.yaml
│   │       ├── kustomization.yaml
│   │       └── service.yaml
│   ├── files
│   │   └── dockerconfigjson.encrypted
│   ├── kustomization.yaml
│   └── patches
│       └── deployment.yaml
└── overlays
    ├── development
    │   ├── files
    │   │   └── nginx.conf
    │   └── kustomization.yaml
    ├── production
    │   ├── files
    │   │   └── nginx.conf
    │   └── kustomization.yaml
    └── staging
        ├── files
        │   └── nginx.conf
        └── kustomization.yaml
```

```bash
kustomize build overlays/development
kustomize build overlays/staging
kustomize build overlays/production
```