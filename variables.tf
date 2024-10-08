### Project Tags ###

variable "project_name" {
  type = string
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "common_tags" {
  type = map(any)
}

### vpc tags ###

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  type    = string
  default = true
}

variable "vpc_tags" {
  type    = map(any)
  default = {}
}

### igw tags ###

variable "igw_tags" {
  type    = map(any)
  default = {}
}

### subnets tags ###

variable "public_subnet_cidrs" {
  type = list(any)
  validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "please provide 2 valid public subnet CIDR"
  }
}

variable "private_subnet_cidrs" {
  type = list(any)
  validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "please provide 2 valid private subnet CIDR"
  }
}

variable "database_subnet_cidrs" {
  type = list(any)
  validation {
    condition     = length(var.database_subnet_cidrs) == 2
    error_message = "please provide 2 valid database subnet CIDR"
  }
}

variable "public_subnet_cidrs_tags" {
  type    = map(any)
  default = {}
}

variable "private_subnet_cidrs_tags" {
  type    = map(any)
  default = {}
}

variable "database_subnet_cidrs_tags" {
  type    = map(any)
  default = {}
}

variable "database_subnet_group_tags" {
  type    = map(any)
  default = {}
}

variable "nat_gateway_tags" {
  type    = map(any)
  default = {}
}

variable "public_route_table_tags" {
  type    = map(any)
  default = {}
}

variable "private_route_table_tags" {
  type    = map(any)
  default = {}
}

variable "database_route_table_tags" {
  type    = map(any)
  default = {}
}

### Peering ###

variable "is_peering_required" {
  type    = bool
  default = false
}

variable "acceptor_vpc_id" {
  type    = string
  default = ""
}


variable "vpc_peering_tags" {
  type    = map(any)
  default = {}
}
