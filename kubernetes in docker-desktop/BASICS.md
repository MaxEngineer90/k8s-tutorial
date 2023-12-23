# **Kubernetes with Docker Desktop**

## **Step 1: Install Docker Desktop**

Install Docker Desktop from the official Docker website. Available for Windows, Mac, and some Linux distributions.

## **Step 2: Enable Kubernetes in Docker Desktop**

1. **Open Docker Desktop**: Start Docker Desktop.
2. **Open Settings**: Go to the settings of Docker Desktop.
3. **Find Kubernetes options**: Look for the "Kubernetes" section.
4. **Enable Kubernetes**: Check the box for "Enable Kubernetes".
5. **Apply Changes**: Click on "Apply & Restart".

## **Step 3: Using `kubectl`**

**`kubectl`** is the command-line tool for Kubernetes.

```bash
bashCopy code
# Check installation
kubectl version

# Check cluster status
kubectl cluster-info

# Enable Kubernetes Dashboard (optional)
kubectl apply -f <https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0/aio/deploy/recommended.yaml>

```

## **Step 4: Basic Kubernetes Commands**

```bash
bashCopy code
# List all nodes
kubectl get nodes

# List all deployments
kubectl get deployments

# List all pods
kubectl get pods

```

## **Step 5: Deployment**

### * [Simple deployment](SIMPLE-DEPLOYMENT-README.md)
### * [Deployment with Helm](./helm/DEPLOYMENT-HELM.md)