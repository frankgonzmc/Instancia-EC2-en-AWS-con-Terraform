# Instancia-EC2-en-AWS-con-Terraform
Objetivo:
Usar Terraform para crear una instancia EC2 en AWS (Amazon Web Services) usando una AMI gratuita (por ejemplo, Amazon Linux 2).

Estructura de archivos esperada:
terraform-ec2/
├── main.tf
├── variables.tf
├── outputs.tf

Lo que debes hacer:

    main.tf:

        Configura el proveedor de AWS.

        Define un recurso de tipo aws_instance.

        Usa una AMI pública (Amazon Linux 2).

        Define el tipo de instancia (por ejemplo, t2.micro).

    variables.tf:

        Declara variables como: región, tipo de instancia, etc.

    outputs.tf:

        Muestra la IP pública de la instancia como salida.

 Tips:

    Usa esta AMI para Amazon Linux 2 en us-east-1: ami-0c02fb55956c7d316

    SSH
    
Bonus Challenge:

    Añade una etiqueta personalizada a la instancia (por ejemplo, Name = "MiPrimeraInstancia").

    Crea un archivo terraform.tfvars para definir tus variables.
