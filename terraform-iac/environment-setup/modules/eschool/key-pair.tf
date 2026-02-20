resource "aws_key_pair" "eschool-key" {
  key_name   = var.public-key
  public_key = file("eschool-key.pub")
}
