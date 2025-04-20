resource "aws_instance" "this" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 (Free Tier) us-east-1
  instance_type = "t2.micro"              # Free Tier elegible
  key_name      = var.key_name
  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = "EC2-Frank"
  }
}
