resource "oci_core_internet_gateway" "adamigw" {
  compartment_id = var.compartment_id
  vcn_id = oci_core_vcn.myfirst-vcn.id
  display_name = "adamigw"
}