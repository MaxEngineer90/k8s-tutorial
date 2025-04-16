# k8s-tutorial

### add cluster config to kubectl (cmd)

````bash
  set KUBECONFIG=/.kube/do/tutorial-kubeconfig.yaml
````

### check cluster config works

```bash
  kubectl --kubeconfig=~/.kube/do/tutorial-kubeconfig.yaml get nodes
```


### add ingress

```bash
  helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
  helm repo update
```

### deaktivate admission webhooks

```bash
  kubectl patch deployment ingress-nginx-controller -n ingress-nginx --type='json' -p='[{"op": "remove", "path": "/spec/template/spec/containers/0/args/3"}]'
```

### [run deploy.sh](deploy/feature/deploy.sh)

## Cert-Manger

### add cert-manger

```bash
  helm repo add jetstack https://charts.jetstack.io
  helm repo update
```

### install cert-manager

```bash
  helm install cert-manager jetstack/cert-manager \
      --namespace cert-manager \
      --create-namespace \
      --set installCRDs=true
```

### [run letsencrypt-issuer.yaml](deploy/feature/letsencrypt-issuer.yaml)

### check is cluster issur created

```bash
  kubectl get issuer -n cert-manager
```