provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2_server" {
  ami           = "ami-08a6efd148b1f7504"   # Replace with your AMI ID
  instance_type = "t2.micro"
  key_name      = "july25-dvft"             # Replace with your key pair name

  vpc_security_group_ids = ["sg-05fd874b9ff9aac16"]  # Replace with your security group ID

  root_block_device {
    volume_size = 25
  }

  tags = {
    Name = "ec2CreationUsingTerraformTowfique"
  }
}

output "instance_id" {
  value = aws_instance.ec2_server.id
}
