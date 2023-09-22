variable "ami" {
  type        = string
  description = "AMI id of instance"

}
variable "ins_type" {
  type        = string
  description = "instance type"

}

variable "name" {
  type        = string
  description = "name of instance"
}

variable "owner" {
  type        = string
  description = "owner of instance"
}
variable "sg_names" {
    type = string
    description = "security group name"
}

variable "sg_description" {
    type = string
    description = "security group description"
}

variable "sg_to_port" {
    type = number
    description = "SG to-port"
}

variable "sg_protocol" {
    type = string
    description = "SG protocol"
}