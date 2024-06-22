resource "aws_key_pair" "deployer1" {
  key_name   = "devops-pub"
  public_key = file("${path.module}/devops.pub")
}


resource "aws_instance" "file" {
 count                  = 10
 ami                    = "${var.ami}"
 instance_type          = "t2.medium"
 key_name               = aws_key_pair.deployer.key_name
 
} 