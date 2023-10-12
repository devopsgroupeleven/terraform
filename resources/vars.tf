variable "ami" {
  type = map
  default = ({
    ubuntu20 = "ami-08e5424edfe926b43"
    ubuntu22 = "ami-0f5ee92e2d63afc18"
})
}


variable "instance_type" {
  type = list
  default = ["t2.micro", "t2.medium", "t2.large", "m5.4xlarge"]
}

variable "associate_public_ip_address" {
  type = bool
  default = "true"
}

variable "key_name" {
  type =  string
  default = "web_server_aws"
}

variable "number_of_instances" {
  type = number
  default = 1
}
