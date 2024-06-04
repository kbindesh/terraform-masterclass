# 5. Terraform Provider Overview
  - Terraform make use of plugins called <i><b>Providers</i></b> to interact with cloud providers (AWS, GCP, Azure etc), SaaS providers, and other APIs.
  - By default, Terraform doesn't have any provider on the local machine.
  - Terraform configurations must declare which providers they require so that Terraform can install and use them.
  
  - Some Terraform providers require configuration (like endpoint URLs or cloud regions) before they can be used.
  - Providers are distributed separately from Terraform itself, and each provider has its own release sequence and version numbers.
  - The <i><b>Terraform Registry</i></b> stores publicly available Terraform providers, and hosts providers for most major infrastructure platforms.
    <img src="https://user-images.githubusercontent.com/121426292/209771734-a13a1b1c-8897-4ef2-baba-279f9906193a.png" data-canonical-src="https://user-images.githubusercontent.com/121426292/209771734-a13a1b1c-8897-4ef2-baba-279f9906193a.png" width="730" height="370" />
    
  
  ## 5.1 Provider Block: Syntax 

  ## 5.2 Provider Block: Examples
   
     - Terraform AWS Provider
    
     - Terraform Azure Provider
   
     - Terraform GCP Provider 
 
  ## 5.3 Finding perfect Terraform Provider for you requirement on Registry (https://registry.terraform.io/)
     
  Some Terraform providers on the Registry are developed and published by HashiCorp, some are published by platform maintainers, and some are published by users and volunteers.
     

| Tier | Description | Namespace |
| :---:      |   :---     |   :---  |
| Official  | Official providers are owned and maintained by HashiCorp    | HashiCorp   |
| Partner   | Partner providers are written, maintained, validated and published by third-party companies |  Third-party organization  |
| Community   | Describes one or more infrastructure objects, such as virtual networks, VMs etc     |    |
| Archived   | Serve as input parameters for a Terraform Resource or Module                              |    |
