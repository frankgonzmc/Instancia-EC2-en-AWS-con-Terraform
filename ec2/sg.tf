resource "aws_security_sroup" "sg-ec2" {
    name = "sg-ec2"
    description = "Grupo de seguridad E/S para EC2"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "http"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "sg-ec2-prueba"
        Enviroment = "test"
        Owner = "franktoomg@gmail.com"
        Team = "DevOps"
        Project = "Prueba_EC2"
    }
}