variable "subnet_ids" {
  description = "Identifiers of EC2 Subnets."
  type        = list(string)

  validation {
    condition     = can(length(var.subnet_ids) > 0)
    error_message = "Required subnet_ids list."
  }
}

variable "vpc_id" {
  description = "Identifier of EC2 VPC."
  type        = string
}

variable "appliance_mode_support" {
  description = "Use it for enable a traffic flow between a source and destination uses the same Availability Zone for the VPC attachment for the lifetime of that flow."
  type        = string
  default     = "disable"

  validation {
    condition     = can(contains(["disable", "enable"], var.appliance_mode_support))
    error_message = "appliance_mode_support valid values: disable, enable"
  }
}

variable "dns_support" {
  description = "Enable DNS support"
  type        = string
  default     = "enable"

  validation {
    condition     = can(contains(["disable", "enable"], var.dns_support))
    error_message = "dns_support valid values: disable, enable"
  }
}

variable "ipv6_support" {
  description = "Enable to support IPv6."
  type        = string
  default     = "disable"

  validation {
    condition     = can(contains(["disable", "enable"], var.ipv6_support))
    error_message = "ipv6_support valid values: disable, enable"
  }
}

variable "transit_gateway_default_route_table_association" {
  description = "Whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. "
  type        = bool
  default     = true
}

variable "transit_gateway_default_route_table_propagation" {
  description = "Whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways."
  type        = bool
  default     = true
}

variable "tags" {
  description = "Key-value tags for the resource."
  type        = map(string)
  default     = {}
}

variable "transit_gateway_vpc_attachment_accepter" {
  description = "Allow VPC from another AWS Account to be attached to Transit Gateway."
  type        = bool
  default     = false
}

variable "transit_gateway_id" {
  description = "Transti Gateway id for VPC accepter."
  type        = string
  default     = null
}

variable "transit_gateway_route_table_id" {
  description = "ID of the custom created Transit Gateway route table."
  type        = string
  default     = null
}