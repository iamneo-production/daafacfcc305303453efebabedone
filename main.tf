provider "aws" {
  region = "us-west-2" # Singapore region
  access_key = "AKIAQ5UGFN4CDNVBTLTV"
  secret_key = "P9bDvmFXW5oTN/0bwDRbdpD0jAd4MMdDlTJymJMv"
}

resource "aws_instance" "example" {
  ami           = "ami-0dacd9d37849a9f38" # Replace with the SUSE Linux AMI ID
  instance_type = "t2.micro"
}

output "public_ip" {
  value = aws_instance.example.public_ip
}