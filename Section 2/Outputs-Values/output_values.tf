provider "aws" {
    region = "eu-central-1"
}

resource "aws_eip" "lb" {
    domain = "vpc"  
}

output "public-ip" {
    value = aws_eip.lb.public_ip
}