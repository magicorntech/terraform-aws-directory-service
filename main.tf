resource "aws_directory_service_directory" "main" {
  name        = var.ds_name
  description = "Managed by Magicorn"
  type        = var.type
  edition     = (var.edition != null) ? var.edition : null
  size        = (var.size != null) ? var.size : null
  short_name  = var.short_name
  password    = random_password.pass.result

  vpc_settings {
    vpc_id     = var.vpc_id
    subnet_ids = var.subnet_ids
  }

  tags = {
    Name        = "${var.tenant}-${var.name}-ds-${var.ds_name}-${var.environment}"
    Tenant      = var.tenant
    Project     = var.name
    Environment = var.environment
    Maintainer  = "Magicorn"
    Terraform   = "yes"
  }
}
