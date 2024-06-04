# 3. Terraform Configuration Language
  The main purpose of the Terraform language is declaring resources, which represent infrastructure objects. The Terraform configuration files you write in Terraform language basically define:
   - Terraform what plugins to install
   - What infrastructure to create/update/delete
   - What data to fetch from Providers
   - Define dependencies between resources
   - Create multiple similar resources from a single configuration block (meta-arguments)

## 3.1 Terraform Language: Building blocks
   1. Blocks
   2. Arguments
   3. Identifiers
   <img src="https://user-images.githubusercontent.com/121426292/209712465-003d67d3-1fea-4eef-88f0-b12b55c631b0.png" data-canonical-src="https://user-images.githubusercontent.com/121426292/209712465-003d67d3-1fea-4eef-88f0-b12b55c631b0.png" width="550" height="300" />
   
   4. Comments: 
      - Single line comment: <br/>
        ```// This line is commented```
        
      - Multi-line comment: <br/>
        ```/* This line is commented```<br/>
        ```along with this line */```


## 3.2 Terraform Language: Top-Level blocks

| Terraform Blocks | Description |
| :---:      |   :---     |
| terraform  | Describes Terraform version, Provider details, and Remote backend configurations    |
| provider   | Describes Terraform Provider specific configs that we want it for all the resources |
| resource   | Describes one or more infrastructure objects, such as virtual networks, VMs etc     |
| variable   | Serve as input parameters for a Terraform Resource or Module                              |
| output     | Describes the returned values for a Terraform module                                |
| local      | Local variables are used for assigning a short name (alias) to an expression        |
| data       | Data blocks can be used to pull information defined outside of Terraform, or in separate Terraform configuration |
| module     | Modules are containers for multiple resources that are used together which you can reuse |
