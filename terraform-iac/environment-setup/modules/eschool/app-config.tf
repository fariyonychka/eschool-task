resource "aws_instance" "app" {
  ami                    = var.ami-name
  instance_type          = "t3.small"
  vpc_security_group_ids = [aws_security_group.security-group-app.id]
  subnet_id              = var.subnet-id
  key_name               = aws_key_pair.eschool-key.key_name
  tags = merge(var.common_tags, {
    Name = "eschool-app"
  })
}
