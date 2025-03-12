# terraform-aws-directory-service

Magicorn made Terraform Module for AWS Provider
--
```
module "ds" {
  source      = "magicorntech/directory-service/aws"
  version     = "0.0.1"
  tenant      = var.tenant
  name        = var.name
  environment = var.environment
  vpc_id      = module.vpc.vpc_id
  subnet_ids  = module.vpc.pvt_subnet_ids

  # Directory Service Configuration
  ds_name    = "example.local"
  short_name = "XMPL"       # NetBIOS name
  type       = "MicrosoftAD"
  edition    = "Standard"   # can also be null depending on the type
  size       = null         # can also be null depending on the type
}
```

## Notes
1) Nothing further your honour.