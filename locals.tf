locals {
  common_tags = {
    name = var.project
    Environment = var.Environment
    terraform = "true"
  }
    az_names = slice(data.aws_availability_zones.available.names, 0, 2)
}