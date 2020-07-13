output "id" {
	description = "List the IDs of the instances"
	value       = aws_instance.this.*.id
}

output "arn" {
	description = "List the ARNs of the instances"
	value       = aws_instance.this.*.arn
}

output "availability_zone" {
	description = "List the availability zones of the instances"
	value       = aws_instance.this.*.availability_zone
}

output "key_name" {
	description = "List the key pair of the instances"
	value       = aws_instance.this.*.key_name
}

output "public_ip" {
	description = "List the ip address of the instances"
	value       = aws_instance.this.*.public_ip
}

output "security_groups" {
	description = "List the security groups of the instances"
	value       = aws_instance.this.*.vpc_security_group_ids
}

output "instance_count" {
	description = "Number of instances that are launched"
	value       = var.instance_count
}
