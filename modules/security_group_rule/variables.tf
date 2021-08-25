variable "type" {
  type = string
  description = "(Required) Type of rule being created. Valid options are ingress (inbound) or egress (outbound)."
}

variable "from_port" {
  type = number
  description = "(Required) Start port (or ICMP type number if protocol is icmp or icmpv6)."
}

variable "to_port" {
  type = number
  description = "(Required) End port (or ICMP code if protocol is icmp)"
}

variable "protocol" {
  type = string
  description = "(Required) Protocol. If not icmp, icmpv6, tcp, udp, or all use the protocol number"
}

variable "cidr_blocks" {
  type = list(string)
  description = "(Optional) List of CIDR blocks."
}

variable "security_group_id" {
  type = string
  description = "(Required) Security group to apply this rule to."
}

