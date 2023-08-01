resource "tls_private_key" "my_keypair" {
  algorithm = "RSA"
}

data "tls_public_key" "my_keypair" {
  private_key_pem = tls_private_key.my_keypair.private_key_pem
}

resource "aws_key_pair" "my_keypair" {
  key_name   = "my-keypair-name"  # Replace with your desired key pair name
  public_key = data.tls_public_key.my_keypair.public_key_openssh
}

# output "private_key_pem" {
#   value = tls_private_key.my_keypair.private_key_pem
#   sensitive = true
# }

# Write the private key to a .pem file
resource "local_file" "private_key_pem" {
  filename = "my_keypair.pem"  # Replace with the desired file name
  content  = tls_private_key.my_keypair.private_key_pem
}
