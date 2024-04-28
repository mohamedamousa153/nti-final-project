resource "aws_instance" "jenkins_server" {
  ami           = data.aws_ami.my_ami.id
  instance_type = var.ec2_instance_type
  subnet_id     = aws_subnet.public-us-east-1a.id
  key_name      = aws_key_pair.ec2_jenkins_key.id

  tags = {
    Name = "ec2_jenkins"
  }
}
