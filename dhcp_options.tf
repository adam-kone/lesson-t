resource "oci_core_dhcp_options" "adamdhcpoptions" {
  compartment_id = var.compartment_id
  vcn_id = oci_core_vcn.myfirst-vcn.id
  options {
    type = "DomainNameServer"
    server_type = "VcnLocalPlusInternet"
  }
}