
# MediaWiki Deployment Guide

## Prerequisites:

1. Azure account with a Subscription associated to it 
2. A user with contributor privileges on Azure Subscription

## Dependencies:

To run the Terraform and Ansible playbook, you'll need a Linux Virtual Machine (VM) with the following dependencies installed:

### Azure CLI: 
- The playbook utilizes the Azure CLI (az) to authenticate with Azure and interact with Azure resources. Make sure you have the Azure CLI installed and configured with appropriate permissions.

### Terraform: 
- Terraform is used for provisioning and managing infrastructure as code. It's assumed that you have used Terraform to provision the AKS cluster and other necessary Azure resources. Ensure Terraform is installed and configured to manage your infrastructure.

### kubectl:
- Kubernetes command-line tool (kubectl) is used to interact with the Kubernetes cluster. Ensure kubectl is installed and configured to communicate with your AKS cluster.

### Helm: 
- Helm is a package manager for Kubernetes used for deploying and managing applications. Ensure Helm is installed and initialized on the machine where Ansible is executed.

### Ansible: 
- Ensure Ansible is installed on the system where you intend to run this playbook.
- Python (with PyYAML): Ansible requires Python and PyYAML for its operation. Make sure Python is installed, and PyYAML is available.

## Steps to Run:

1. A Service Principal (SP) needs to be created in Azure to run Terraform and Ansible. Grant Contributer Role to the above SP on Azure AD over the scope of the Subscription.

2. Copy IaC scripts:
   Clone the files from the code repo to the VM that has Terraform and Ansible installed.

3. Switch directory to the environment specific folder: 
   ```
   cd /home/azureuser/azure_infrastructure/terraform/environments/<env_name>
   ```

4. Update `providers.tf` and the `terraform.tfvars` as per the environment-specific values.

5. Run the following 3 commands sequentially in the same directory:
   ```
   terraform init
   terraform plan
   terraform apply
   ```

## Deploying MediaWiki:

To deploy MediaWiki on the above created AKS cluster, you have to run the Ansible playbook

### Steps to run the Ansible Playbook:

1. Open the path of the folder where the Ansible playbook is stored:
   ```
   /home/azureuser/azure_infrastructure/ansible
   ```

2. Run the following command to execute the Ansible Playbook using the Master Playbook (`master.yml`):
   ```
   ansible-playbook master.yml
   ```

3. After the Ansible Playbook has run successfully, in the Ansible outputs, you will see a public IP with which you can access MediaWiki.

4. The username to access MediaWiki is "user".

5. The password can also be seen in the Ansible outputs.

6. The password to access MediaWiki can be something like this, "VyMbhYSQa4".

7. You can access MediaWiki with the public IP and the credentials.

