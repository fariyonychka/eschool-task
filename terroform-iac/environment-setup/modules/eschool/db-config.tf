resource "aws_ebs_volume" "db-volume" {
  availability_zone = var.availability-zone
  size              = 1
  type              = "gp3"
  tags = merge(var.common_tags, {
    Name = "db-volume"
  })
}

resource "aws_instance" "db" {
  ami                    = var.ami-name
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.security-group-db.id]
  subnet_id              = var.subnet-id
  key_name               = aws_key_pair.eschool-key.key_name
  tags = merge(var.common_tags, {
    Name = "eschool-db"
  })
}

resource "aws_volume_attachment" "generic_data_vol_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.db-volume.id
  instance_id = aws_instance.db.id
}
