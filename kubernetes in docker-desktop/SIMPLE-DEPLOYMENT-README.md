
## **Create a Simple Deployment**

```bash
kubectl apply -f deployment.yaml
```

[deployment.yml](deployment.yaml)

```yaml
kubectl apply -f service.yaml
```

[service.yaml](service.yaml)

To check if it was built

```bash
kubectl get services # displays the services
kubectl logs pod ${podname}
```