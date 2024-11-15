output "id" {
  description = "The ID of the instance"
  value       = aws_instance.this[0].id
}

output "arn" {
  description = "The ARN of the instance"
  value       = aws_instance.this[0].arn
}

output "capacity_reservation_specification" {
  description = "Capacity reservation specification of the instance"
  value       = aws_instance.this[0].capacity_reservation_specification
}

output "instance_state" {
  description = "The state of the instance. One of: `pending`, `running`, `shutting-down`, `terminated`, `stopping`, `stopped`"
  value       = aws_instance.this[0].instance_state
}

output "outpost_arn" {
  description = "The ARN of the Outpost the instance is assigned to"
  value       = aws_instance.this[0].outpost_arn
}

output "password_data" {
  description = "Base-64 encoded encrypted password data for the instance. Useful for getting the administrator password for instances running Microsoft Windows. This attribute is only exported if `get_password_data` is true"
  value       = aws_instance.this[0].password_data
}

output "primary_network_interface_id" {
  description = "The ID of the instance's primary network interface"
  value       = aws_instance.this[0].primary_network_interface_id
}

output "private_dns" {
  description = "The private DNS name assigned to the instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC"
  value       = aws_instance.this[0].private_dns
}

output "public_dns" {
  description = "The public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = aws_instance.this[0].public_dns
}

output "public_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = aws_instance.this[0].public_ip
}

output "private_ip" {
  description = "The private IP address assigned to the instance."
  value       = aws_instance.this[0].private_ip
}

output "ipv6_addresses" {
  description = "The IPv6 address assigned to the instance, if applicable."
  value       = try(aws_instance.this[0].ipv6_addresses, [])
}

output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block"
  value       = aws_instance.this[0].tags_all
}