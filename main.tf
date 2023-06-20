provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "production_server" {
  ami           = "ami-0cf13cb849b11b451"  
  instance_type = "t3.medium"               
  key_name      = "devopslabs.pem"          
  vpc_security_group_ids = ["vpc-047ede5642df03eb4"]  

  tags = {
    Name = "production-server"
  }

output "production_server_ip" {
  value = aws_instance.production_server.public_ip
}
