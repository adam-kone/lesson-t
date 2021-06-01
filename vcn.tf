resource "oci_core_vcn" "myfirst-vcn" {
  cidr_block = var.vcn-cidr
  compartment_id = var.compartment_id
  display_name = var.vnc-name
  dns_label = "internal"
}
