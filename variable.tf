variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "nsg_name" {
  description = "Network Security Group Name"
  type        = string
}

variable "security_rule_name" {
  description = "Security Rule Name"
  type        = string
}

variable "priority" {
  description = "Rule Priority"
  type        = number
}

variable "direction" {
  description = "Inbound or Outbound"
  type        = string
}

variable "access" {
  description = "Allow or Deny"
  type        = string
}

variable "protocol" {
  description = "Protocol"
  type        = string
}

variable "source_port_range" {
  description = "Source Port Range"
  type        = string
}

variable "destination_port_range" {
  description = "Destination Port Range"
  type        = string
}

variable "source_address_prefix" {
  description = "Source Address Prefix"
  type        = string
}

variable "destination_address_prefix" {
  description = "Destination Address Prefix"
  type        = string
}