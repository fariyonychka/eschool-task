data "aws_vpc" "eschool-vpc" {
  tags = {
    Name = "ESchoolProject"
  }
}
