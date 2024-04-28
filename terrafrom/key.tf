resource "tls_private_key" "rsa-4096-example" {
  algorithm = var.tls_algorithm
  rsa_bits  = var.tls_rsa_bits
}

resource "aws_key_pair" "ec2_jenkins_key" {
  key_name   = "ec2_jenkins_key"
  public_key = tls_private_key.rsa-4096-example.public_key_openssh
}

resource "local_file" "private_key_file" {
  content         = tls_private_key.rsa-4096-example.private_key_pem
  filename        = "${path.module}/ec2_jenkins_key_private.pem"
  file_permission = var.private_key_file_permission
}

