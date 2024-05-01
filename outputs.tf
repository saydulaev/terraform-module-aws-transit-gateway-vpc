output "attributes" {
  value = {
    vpc_attachment          = aws_ec2_transit_gateway_vpc_attachment.this
    vpc_attachment_accepter = aws_ec2_transit_gateway_vpc_attachment_accepter.this
  }
}

output "vpc_attachment_id" {
  description = "Transig gateway VPC attachment id."
  value       = one(aws_ec2_transit_gateway_vpc_attachment.this[*].id)
}

output "vpc_attachment_accepter_id" {
  description = "Transig gateway VPC attachment accepter id."
  value       = one(aws_ec2_transit_gateway_vpc_attachment_accepter.this[*].id)
}

output "transit_gateway_route_table_association_id" {
  description = "Transit gateway route table association id."
  value       = one(aws_ec2_transit_gateway_route_table_association.this[*].id)
}

output "transit_gateway_route_table_propagation" {
  description = "Transit gateway route table propagation id."
  value       = one(aws_ec2_transit_gateway_route_table_propagation.this[*].id)
}