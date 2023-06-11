variable "nodegroup_config" {
  type = map(any)
}

variable "cluster_name" {
  type = string
}


variable "cidr" {
  type = string
}

variable "azs" {
  type = set(any)
}

variable "private_subnets"{
  type = set(any)
}

variable "public_subnets"{
  type = set(any)
}

