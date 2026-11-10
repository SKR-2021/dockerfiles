resource "aws_instance" "docker" {
  ami           = "ami-0055977a6e828a4f4"
  instance_type = "t3.micro"

  user_data = file("script.sh")

  tags = {
    Name = "docker-vm"
  }

}