# Terraform Basics

## 2.1 Terraform Editions
   1. Terraform Binary
      
   2. Terraform Cloud
      - Free
      - Team & Governance
      - Business
   3. Terraform Enterprise (Self-hosted)

## 2.2: Setting-up environment for Terraform
   1. Install Terraform
      - Terraform natively supports Windows, Linux, MacOS, Solais and OpenBSD platforms
      - [Download & Install Terraform](https://developer.hashicorp.com/terraform/downloads)
      - For Windows systems: Download the .zip >> unzip the package to a `xxxxx` folder >> set the path in system's environment variable for `xxxxx` folder >> Save the changes   
   2. Install Editor (Visual Studio Code)
      - [Download & Install Visual Studio Code](https://code.visualstudio.com/download)
      - Install extensions: Hashicorp Terraform, Prettier
      
   3. [Install Git](https://git-scm.com/downloads)

## 2.3: Understanding Terraform Basics
   - Terraform Providers
   - Terraform Modules
   - Terraform Resources
   - How Terraform works? 

## 2.4: Terraform Files
   
   Files containing Terraform code are often called configuration files or manifests
   1. <b>*.tf file:</b> Configuration files you write in Terraform language tell Terraform what plugins to install, what infrastructure to create, and what data to fetch from Terraform Providers.
   2. <b>terraform.tfstate file:</b> The terraform state is stored by default in a local file named "terraform.tfstate", but it can also be stored remotely, which works better in a team environment.
   3. <b>terraform.tfstate.backup:</b> With terraform.tfstate.backup file, you can restore your last working state (.tfstate) file in case it run into any issue.
   4. <b>terraform.lock.hcl:</b> With terraform.lock.hcl file, you can determine which dependencies are potentially compatible with the current terraform configuration.
   5. <b>terraform.tfvars:</b> The terraform.tfvars files allow us to manage variable assignments systematically in a file.

## 2.5: How to structure a Terraform Project?
   
   Putting all code in main.tf is a good idea when you are getting started or writing an example code. 
   In all other cases, it will be better having several files split logically like this:
   
   - main.tf - call modules, locals, and data sources to create all resources
   - variables.tf - contains declarations of variables used in main.tf
   - outputs.tf - contains outputs from the resources created in main.tf
   - versions.tf - contains version requirements for Terraform and providers
   - terraform.tfvars - can be used to pass variable values declared in variables.tf
 
