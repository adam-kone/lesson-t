resource "oci_core_security_list" "security-list" {
  manage_default_resource_id = ""
  compartment_id = var.compartment_id
  vcn_id = oci_core_vcn.myfirst-vcn
  display_name = "security-list"

  egress_security_rules {
    destination = "6"
    protocol = "0.0.0.0/0"
  }

  dynamic "ingress_security_rules" {
    for_each = "var.service-ports"
    content {
      protocol = "6"
      source = "0.0.0.0/0"
      tcp_options {
        max = ingress_security_rules.value
        min = ingress_security_rules.value
      }
    }
  }
  ingress_security_rules {
    protocol = "6"
    source = "var.vcn-cidr"
  }
}