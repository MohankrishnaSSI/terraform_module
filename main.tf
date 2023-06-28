provider "aws" {
  region = var.region
}

resource "aws_instance" "web_app" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file(var.private_key_path)
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install apache2 -y"
    ]
  }
}

