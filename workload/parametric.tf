locals {
  prefix = "BW - "
  suffix = " - GD"
}

# Categories
resource "jamfpro_category" "security_compliance" {
  name = "${local.prefix}Security Compliance${local.suffix}"
}

resource "jamfpro_category" "software_deployment" {
  name = "${local.prefix}Software Deployment${local.suffix}"
}

resource "jamfpro_category" "system_configuration" {
  name = "${local.prefix}System Configuration${local.suffix}"
}

resource "jamfpro_category" "user_management" {
  name = "${local.prefix}User Management${local.suffix}"
}

resource "jamfpro_category" "network_settings" {
  name = "${local.prefix}Network Settings${local.suffix}"
}

resource "jamfpro_category" "printer_management" {
  name = "${local.prefix}Printer Management${local.suffix}"
}

resource "jamfpro_category" "energy_management" {
  name = "${local.prefix}Energy Management${local.suffix}"
}

resource "jamfpro_category" "maintenance" {
  name = "${local.prefix}Maintenance${local.suffix}"
}

resource "jamfpro_category" "accessibility" {
  name = "${local.prefix}Accessibility${local.suffix}"
}

resource "jamfpro_category" "inventory" {
  name = "${local.prefix}Inventory${local.suffix}"
}

# Scripts
resource "jamfpro_script" "enforce_filevault" {
  name            = "${local.prefix}enforce-filevault.sh${local.suffix}"
  category_id     = jamfpro_category.security_compliance.id
  script_contents = file("${path.module}/files/enforce-filevault.sh")
  priority        = "BEFORE"
}

resource "jamfpro_script" "install_chrome" {
  name            = "${local.prefix}install-chrome.sh${local.suffix}"
  category_id     = jamfpro_category.software_deployment.id
  script_contents = file("${path.module}/files/install-chrome.sh")
  priority        = "AFTER"
}

resource "jamfpro_script" "set_timezone" {
  name            = "${local.prefix}set-timezone.sh${local.suffix}"
  category_id     = jamfpro_category.system_configuration.id
  script_contents = file("${path.module}/files/set-timezone.sh")
  priority        = "AFTER"
}

resource "jamfpro_script" "create_local_admin" {
  name            = "${local.prefix}create-local-admin.sh${local.suffix}"
  category_id     = jamfpro_category.user_management.id
  script_contents = file("${path.module}/files/create-local-admin.sh")
  priority        = "AFTER"
}

resource "jamfpro_script" "configure_vpn" {
  name            = "${local.prefix}configure-vpn.sh${local.suffix}"
  category_id     = jamfpro_category.network_settings.id
  script_contents = file("${path.module}/files/configure-vpn.sh")
  priority        = "AFTER"
}

resource "jamfpro_script" "add_network_printer" {
  name            = "${local.prefix}add-network-printer.sh${local.suffix}"
  category_id     = jamfpro_category.printer_management.id
  script_contents = file("${path.module}/files/add-network-printer.sh")
  priority        = "AFTER"
}

resource "jamfpro_script" "set_power_policy" {
  name            = "${local.prefix}set-power-policy.sh${local.suffix}"
  category_id     = jamfpro_category.energy_management.id
  script_contents = file("${path.module}/files/set-power-policy.sh")
  priority        = "AFTER"
}

resource "jamfpro_script" "clear_system_cache" {
  name            = "${local.prefix}clear-system-cache.sh${local.suffix}"
  category_id     = jamfpro_category.maintenance.id
  script_contents = file("${path.module}/files/clear-system-cache.sh")
  priority        = "AFTER"
}

resource "jamfpro_script" "enable_voiceover" {
  name            = "${local.prefix}enable-voiceover.sh${local.suffix}"
  category_id     = jamfpro_category.accessibility.id
  script_contents = file("${path.module}/files/enable-voiceover.sh")
  priority        = "AFTER"
}

resource "jamfpro_script" "collect_hardware_info" {
  name            = "${local.prefix}collect-hardware-info.sh${local.suffix}"
  category_id     = jamfpro_category.inventory.id
  script_contents = file("${path.module}/files/collect-hardware-info.sh")
  priority        = "AFTER"
}
