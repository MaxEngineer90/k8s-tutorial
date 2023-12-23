### **2. Create a [Helm Chart](giftify-chart)**

#### * [Basic helm commands](BASIC-HELM-COMMAND)

Create a Helm chart for your application. A chart is a Helm package that contains all the necessary resources and configurations to run an application (or a part of it) on Kubernetes.

```bash
helm create giftify-chart
```

This command creates a new directory called **`giftify-chart`** with the basic structure of a Helm chart.

### **3. Configure Deployment and Service**

Modify the files in the **`giftify-chart`** directory to reflect your Kubernetes configurations.

- **Deployment:** Edit the **`giftify-chart/templates/deployment.yaml`** file to define your deployment. Transfer the contents of your **`deployment.yaml`** into this file.
- **Service:** Edit the **`giftify-chart/templates/service.yaml`** file to define your service. Transfer the contents of your **`service.yaml`** into this file.

### **4. Define Variables**

Use the **`giftify-chart/values.yaml`** file to define any configurable values used in your deployment and service. You can set variables for things like image version, port numbers, etc.

### **5. Install Helm Chart**

After making the configurations, you can install your Helm chart in your Kubernetes cluster:

```bash
helm install giftify giftify-chart
```

### **6. Updates and Maintenance**

If you want to make changes to your application, update the corresponding files in your Helm chart and apply the changes using Helm:

```bash
helm upgrade giftify giftify-chart
```

### **Summary**

This is a basic introduction to using Helm for your Kubernetes application. Helm allows you to manage your application resources more efficiently and provides additional features such as version control and easy rollback. For a more detailed guide, I recommend consulting the official Helm documentation.