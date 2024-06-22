resource "aws_instance" "mywish" {
 count                  = 10
 ami                    = "${var.ami}"
 instance_type           = var.list[count.index] == "mongodb" || var.list[count.index] == "super21" ? "t3.micro":"t2.medium"
 tags ={
    Name=var.list[count.index]
 }
} 

resource "aws_key_pair" "deployer" {
  key_name   = "devops-pub"
  public_key = file("${path.module}/devops.pub")
}


resource "aws_instance" "mywish2" {
 count                  = 10
 ami                    = "${var.ami}"
 instance_type           = "t2.medium"
 
} 