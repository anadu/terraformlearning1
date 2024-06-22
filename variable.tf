variable "ami" {
  default = "ami-0b4f379183e5706b9"  
  
}


variable "instance_name" {
  default = "mongodb"
  
}

variable "map"{
  default = {
    Name="kishore"
    Terraform="true"
  }
}