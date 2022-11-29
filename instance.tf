resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t3.micro"
  provisioner "local-exec" {
    command = "echo ${aws_instance.example.private_ip} >> private_ips.txt"
  }
  tags = {
    Name = "ibaraz_test_ubuntu"      
    }
}

output "ip" {
  value = aws_instance.example.public_ip
}