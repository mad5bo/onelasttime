provider "openstack" {
  insecure = true
  version  = "~> 0.2"
}
#Create an IBM i partition
resource "openstack_compute_instance_v2" "PowerVC-LPAR" {
  name         = "${var.ibm_stack_name}"  
  image_name   = "${var.openstack_image_name}"
  flavor_name  = "${var.openstack_flavor_name}"   
  network_name = "${var.openstack_network_name}"
   }
#Variables for deployment
variable "openstack_image_name" {
  description = "The Name of the image to be used for deployment."
}

variable "openstack_flavor_name" {
  description = "The Name of the flavor to be used for deployment."
}

variable "openstack_network_name" {
  description = "The Name of the network to be used for deployment."
}

variable "ibm_stack_name" {
  description = "Stack Name"
}
  

