resource "oci_core_subnet" "subnet1" {
  cidr_block = oci_core_subnet.subnet1.id
  compartment_id = var.compartment_id
  vcn_id = oci_core_vcn.myfirst-vcn.id
  display_name = "subnet1"
  dns_label = ""
  route_table_id = oci_core_route_table.route.id
  dhcp_options_id = oci_core_dhcp_options.adamdhcpoptions.id
  security_list_ids = [oci_core_security_list.security-list.id]
}