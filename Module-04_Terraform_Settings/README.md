# 4. Terraform Settings Overview
  The Terraform Block can be used to specify a required Terraform CLI version, Provider details, configure Terraform back-end (Terraform state).
  Within Terraform block, only constant values can be used. Arguments cannot refer to the named objects such as Resources, Input variables etc and cannot use any Terraform built-in functions.

## 4.1 Terraform Block: Syntax
   <img src="https://user-images.githubusercontent.com/121426292/209720693-a3e8b58a-6937-482a-84a6-53519368e7da.png" data-canonical-src="https://user-images.githubusercontent.com/121426292/209720693-a3e8b58a-6937-482a-84a6-53519368e7da.png" width="550" height="500" />

   - <i><b>required_version</b></i> focuses on underlying terraform CLI version installed on your system.
   - If the terraform CLI version of your system doesn’t matches with the terraform settings, it will result in an error and exit without any action.


## 4.2 Terraform Block: Example
   <img src="https://user-images.githubusercontent.com/121426292/209720693-a3e8b58a-6937-482a-84a6-53519368e7da.png" data-canonical-src="https://user-images.githubusercontent.com/121426292/209720693-a3e8b58a-6937-482a-84a6-53519368e7da.png" width="550" height="500" />
      
      
## 4.3 Terraform Version Constraints


