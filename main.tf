# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "tfe-fawaz" {
  ami           = data.aws_ami.amazon-linux-2.id
  instance_type = var.instance_type
  subnet_id                   = aws_subnet.tfe-fawaz-subnet.id
  key_name                    = "fawaz-mum"
  vpc_security_group_ids      = [aws_security_group.tfe-fawaz-sg.id]
  root_block_device {
    volume_size           = var.root_block_disk_size
    volume_type           = "gp2"
  }
  user_data = <<-EOF
    #!/bin/bash
    curl https://install.terraform.io/ptfe/stable | sudo bash  
  EOF

  tags = {
    Name = "TFE-Fawaz"
  }
}

