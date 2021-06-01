variable "vcn-cidr" {
  default = "20.0.0.0/16"
}
variable "subnet1-cidr" {
  default = "20.0.1.0/24"
}

variable "subnet2-cidr" {
  default = "20.0.2.0/24"
}
variable "vnc-name" {
  default = "myvcn"
}

variable "compartment_id" {
  type= string
  default = "ocid1.compartment.oc1..aaaaaaaaqmbxaf5w5njsvf3e3oizkoomde77fbzkcy26gdfzxcbbije72eza"
}
variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaajznex5attydtrmrgudwayqu7kn4krasw2ct4h4pwz7nwbfxoyd4q"
}
variable "user_ocid" {
  default = "ocid1.user.oc1..aaaaaaaaijipzhhn5dvk6btah6tjapvnp6v4fpt5viefkcncvhse757mqaaa"
}

variable "fingerprint" {
  default = "06:82:da:0b:17:0a:7a:36:b5:78:46:a6:36:29:ef:c6"
}

variable "private_key_path" {
default = "/home/adam_kone/.oci/api_key_public.pem"
}

variable "region" {
  default = "us-ashburn-1"
}

variable "service-ports" {
  default = [80,443,22]
}

variable "ads" {
  default = ["unja:US-ASHBURN-AD-1","unja:US-ASHBURN-AD-2","unja:US-ASHBURN-AD-3"]
}
variable "shapes" {
  default = ["VM.Standard.E3.Flex","VM.Standard.E4.Flex"]
}
variable "images" {
  default = ["ocid1.image.oc1.iad.aaaaaaaau6rhhwb6obqtpedapphf3wzg5h4lzqyykid54qhcitws3npu2uoa"]
}