variable "ami" {
  type    = string
  default = "ami-0078ef784b6fa1ba4"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "sandbox_list" {
  type    = list(string)
  default = ["dev-sandbox", "sit-sandbox", "uat-sandbox"]
}
