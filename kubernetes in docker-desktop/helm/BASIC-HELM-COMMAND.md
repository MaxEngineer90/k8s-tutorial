### **1. Install Helm**

If you haven't installed Helm yet, start with the installation. Helm can be downloaded and installed from the official Helm website.

### **2. Create a Helm Chart**

Create a Helm chart for your application. A chart is a Helm package that contains all the necessary resources and configurations to run an application (or a part of it) on Kubernetes.

```bash
helm create giftify-chart

Save to grepper

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

Save to grepper

```

### **6. Updates and Maintenance**

If you want to make changes to your application, update the corresponding files in your Helm chart and apply the changes using Helm:

```bash
helm upgrade giftify giftify-chart

Save to grepper

```

### **Summary**

This is a basic introduction to using Helm for your Kubernetes application. Helm allows you to manage your application resources more efficiently and provides additional features such as version control and easy rollback. For a more detailed guide, I recommend consulting the official Helm documentation.

### **Helm Basics**

- **Install a Chart**

    ```markdown
    markdownCopy code
    `helm install [NAME] [CHART]`
    
    ```

  Installs a Helm chart. **`[NAME]`** is your chosen release name, and **`[CHART]`** is the chart you want to install.

- **Search Repositories**

    ```markdown
    markdownCopy code
    `helm search repo [KEYWORD]`
    
    ```

  Searches for charts in your repositories that match the **`[KEYWORD]`**.

- **Add a Repository**

    ```markdown
    markdownCopy code
    `helm repo add [NAME] [URL]`
    
    ```

  Adds a new chart repository to your Helm installation. **`[NAME]`** is a local name you assign to the repository, and **`[URL]`** is the location of the repository.

- **Update Repositories**

    ```markdown
    markdownCopy code
    `helm repo update`
    
    ```

  Updates your list of charts from all added repositories.


### **Managing Releases**

- **List Releases**

    ```markdown
    markdownCopy code
    `helm list`
    
    ```

  Lists all the Helm releases in the current namespace.

- **Upgrade a Release**

    ```markdown
    markdownCopy code
    `helm upgrade [RELEASE] [CHART]`
    
    ```

  Upgrades a release to a new version of a chart. **`[RELEASE]`** is the name of your release, and **`[CHART]`** is the chart you're upgrading to.

- **Rollback a Release**

    ```markdown
    markdownCopy code
    `helm rollback [RELEASE] [REVISION]`
    
    ```

  Rolls back a release to a previous revision. **`[RELEASE]`** is the release name, and **`[REVISION]`** is the version to which you're rolling back.

- **Uninstall a Release**

    ```markdown
    markdownCopy code
    `helm uninstall [RELEASE]`
    
    ```

  Removes a release from the cluster.


### **Chart and Repository Management**

- **Create a New Chart**

    ```markdown
    markdownCopy code
    `helm create [NAME]`
    
    ```

  Creates a new chart with the given **`[NAME]`**.

- **Package a Chart**

    ```markdown
    markdownCopy code
    `helm package [CHART_PATH]`
    
    ```

  Packages a chart directory into a chart archive.

- **Lint a Chart**

    ```markdown
    markdownCopy code
    `helm lint [CHART_PATH]`
    
    ```

  Examines a chart for possible issues, helping you verify that the chart follows best practices.

- **Show Chart Details**

    ```markdown
    markdownCopy code
    `helm show chart [CHART]`
    
    ```

  Shows detailed information about a chart.


### **Helm Debugging and Help**

- **Get Release Status**

    ```markdown
    markdownCopy code
    `helm status [RELEASE]`
    
    ```

  Displays the status of the named release.

- **Get All Information About a Release**

    ```markdown
    markdownCopy code
    `helm get all [RELEASE]`
    
    ```

  Fetches all available information about a release.

- **View Release History**

    ```markdown
    markdownCopy code
    `helm history [RELEASE]`
    
    ```

  Shows the history of a release including its revisions.

- **Help**

    ```markdown
    markdownCopy code
    `helm --help` or `helm [COMMAND] --help`
    
    ```

  Displays help about any command. If used without a command, it shows help about the Helm command.