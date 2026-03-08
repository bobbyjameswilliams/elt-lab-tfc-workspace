locals {
  prefix = "BW - "
  suffix = " - GD"
}

# Categories
resource "jamfpro_category" "security_compliance" {
  name = "${local.prefix}Security Compliance${local.suffix}"
}


# Scripts
resource "jamfpro_script" "enforce_filevault" {
  name            = "${local.prefix}enforce-filevault.sh${local.suffix}"
  category_id     = jamfpro_category.security_compliance.id
  script_contents = file("${path.module}/files/enforce-filevault.sh")
  priority        = "AFTER"
}

