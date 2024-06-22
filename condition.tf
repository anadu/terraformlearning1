resource "aws_instance" "name" {
    ami            = "${var.ami}"
    instance_type  = var.instance_name == "mongodb" ? "t2.micro" : "t3.medium"
    tags = var.map
 }