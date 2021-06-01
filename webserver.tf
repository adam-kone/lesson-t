resource "oci_core_instance" "websvr" {
  availability_domain = var.ads[1]
  compartment_id = var.compartment_id
  shape = var.shapes[0]
  display_name = "webserver"
  subnet_id = oci_core_subnet.subnet1.id
  source_details {
    source_id = "image"
    source_type = var.images[0]
  }
  metadata = {
    ssh_authorized_keys= file(var.public_key_oci)
  }
  create_vnic_details {
    subnet_id = oci_core_subnet.subnet1.id
  }

}

data "oci_core_vnic_attachments" "vnicattachement" {
  compartment_id = var.compartment_id
  instance_id = oci_core_instance.websvr.id
  availability_domain = var.ads[1]
}

data "oci_core_vnic" "vnic" {
  vnic_id = data.oci_core_vnic_attachments.vnicattachement.0.vnic_id
}

output "websvr-publicip" {
  value = [data.oci_core_vnic.vnic.public_ip_address]
}