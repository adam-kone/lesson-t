resource "oci_core_route_table" "route" {
  compartment_id = var.compartment_id
  vcn_id = oci_core_vcn.myfirst-vcn.id
  display_name = "route"
  route_rules {
    destination = "0.0.0.0/0"
    destination_type = "cidr_block"
    network_entity_id = oci_core_internet_gateway.adamigw.id
  }
}