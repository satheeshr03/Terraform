variable "ami" {
    default = "ami-04a81a99f5ec58529"  
}

variable "instance_type" {
  default = "t2.medium"
}
variable "key_name" {
  default = "satheesh"
}

variable "subnet_id" {
  default = "subnet-0b6676147b46014b1"
}

variable "security_group_ids" {
    
  default = "sg-06504889e3cde5eb5"
}

variable "iam_instance_profile" {
  default = "SSM"
}

