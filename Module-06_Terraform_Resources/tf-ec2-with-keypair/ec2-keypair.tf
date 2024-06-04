# Here, we have used three resource blocks, one is aws_key_pair. 
# A key pair is used to control login access to the EC2 instance
# The second is tls_private_key”, which Creates a PEM (and OpenSSH) formatted private key, and 
# The third one is local_file, which Generates a local file with the given content.

resource "aws_key_pair" "tf-key-pair" {
  key_name   = "tf-key-pair"
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "tf-key" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "tf-key-pair"
}
