output "subnet-id" {
  description = "The ID of the public subnet created for the ESchool project"
  value       = aws_subnet.public-subnet.id
}
