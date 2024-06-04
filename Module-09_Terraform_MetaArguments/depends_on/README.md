# Terraform Resource Meta-Argument depends_on

## Step-01: Introduction
- Create 9 aws resources in a step by step manner
- Create Terraform Block >> Provider Block
- Create seperate resources for below listed AWS services:
  1) Create VPC
  2) Create Subnet
  3) Create Internet Gateway
  4) Create Route Table
  5) Create Route in Route Table for Internet Access
  6) Associate Route Table with Subnet
  7) Create Security Group in the VPC with port 80, 22 as inbound open
  9) Create EC2 Instance in respective new vpc, new subnet created above with a static key pair, associate Security group created earlier
  10) Create Elastic IP Address and Associate to EC2 Instance
- Use `depends_on` Resource Meta-Argument attribute when creating Elastic IP  

## Step-02: Pre-requisite - Create a EC2 Key Pair
- Create EC2 Key pair `terraform-key` and download pem file and keep it ready for SSH login

## Step-03: versions.tf - Create Terraform & Provider Blocks 
- Create Terraform Block
- Create Provider Block
```
# Terraform Block
terraform {
  required_version = ">= 1.4" 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Provider Block
provider "aws" {
  region = "us-east-1"
  profile = "default"
}
```
## Step-04: vpc.tf - Create VPC Resources 

### Step-4.1: Create VPC using AWS Management Console
- Create VPC Manually and understand all the resources we are going to create. Delete that VPC and start writing the VPC template using terraform
### Step-4.2: Create VPC using Terraform
- Create VPC Resources listed below  
  - Create VPC
  - Create Subnet
  - Create Internet Gateway
  - Create Route Table
  - Create Route in Route Table for Internet Access
  - Associate Route Table with Subnet
  - Create Security Group in the VPC with port 80, 22 as inbound open

## Step-05: ec2-instance.tf - Create EC2 Instance Resource
   - Review `apache-install.sh`

    ```
    #! /bin/bash
    sudo yum update -y
    sudo yum install -y httpd
    sudo service httpd start  
    sudo systemctl enable httpd
    echo "<h1>Terraform is Awesome..!</h1>" > /var/www/html/index.html
    ```

  - Create EC2 Instance Resource

## Step-06: elastic-ip.tf - Create Elastic IP Resource
- Create Elastic IP Resource
- Add a Resource Meta-Argument `depends_on` ensuring Elastic IP gets created only after AWS Internet Gateway in a VPC is present or created

## Step-07: Execute Terraform commands to Create Resources using Terraform
```
# Initialize Terraform
terraform init

# Terraform Validate
terraform validate

# Terraform Plan to Verify what it is going to create / update / destroy
terraform plan

# Terraform Apply to Create EC2 Instance
terraform apply 
```

## Step-08: Verify the Resources
- Verify VPC
- Verify EC2 Instance
- Verify Elastic IP
- Review the `terraform.tfstate` file
- Access Apache Webserver Static page using Elastic IP
```
# Access Application
http://<AWS-ELASTIC-IP>
```

## Step-09: Destroy Terraform Resources
```
# Destroy Terraform Resources
terraform destroy

# Remove Terraform Files
rm -rf .terraform*
rm -rf terraform.tfstate*
```

## References 
- [Elastic IP creation depends on VPC Internet Gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip)
- [Resource: aws_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)
- [Resource: aws_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet)
- [Resource: aws_internet_gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway)
- [Resource: aws_route_table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table)
- [Resource: aws_route](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route)
- [Resource: aws_route_table_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association)
- [Resource: aws_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)
- [Resource: aws_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance)
- [Resource: aws_eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip)