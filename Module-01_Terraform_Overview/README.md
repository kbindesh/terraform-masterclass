# HashiCorp Terraform Overview

###
- <b>HashiCorp Terraform</b> is an IaC tool that lets you define cloud and on-premise resources in human-readable configuration files
- You can version, reuse, and share Terraform configuration files (scripts) 
- You can create a consistent workflow to provision and manage all of your cloud infrastructure throughout its lifecycle.
- Terraform can manage low-level components like compute, storage, and networking resources, as well as high-level components like DNS entries and SaaS features.

## 1.1 Why Terraform?
    
   - You can manage almost any infrastructure ([Terraform supported Providers](https://registry.terraform.io/browse/providers))
   - You can standardize configurations using Terraform Modules ([Terraform supported Modules](https://registry.terraform.io/browse/modules))
   - You can collaborate across teams by storing terraform config in VCS and then executing it using Terraform Cloud
   - You can track your infrastructure state using Terraform State File (.tfstate)
   - You can re-use the Terraform configurations in order to create cloud infrastrcuture
   - You can automate the process of Cloud Infrastructure creation process

## 1.2 How Terraform works?
   ![image](https://user-images.githubusercontent.com/121426292/209580309-be67e59d-6db5-4d97-9eb4-390493202156.png)
   
## 1.3 Which IaC Tool to choose?
   In order to find the perfect IaC tool for your requirement, check below points:

  - Is your cloud infrastructure going to be vender specific in long term? (AWS/Azure/GCP)
  - Do you have or planning to have a multi-cloud infrastructure?
  - How well your IaC tool compliment with the configuration management tools?
  - Price of the complete IaC solution
  - Does the tool provide you technical support
  
## 1.4 Terraform Real World Use-cases
   1. N-Tier application deployments
   2. Build and Dispose environments (Test/QA/UAT/Dev)
   3. Using multiple clouds in order to achieve more resiliency from disasters

## 1.5 Other IaC Tools in the Market
   - AWS CloudFormation
   - Microsoft ARM Template
   - Pulumi
   - Ansible
