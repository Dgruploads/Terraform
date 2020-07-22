output "Instance-1" {
	description = "List the IDs of the instances"
	value       = aws_instance.Ubuntu.*.id
}

output "Instance-2" {
        description = "List the IDs of the instances"
        value       = aws_instance.Amazon.*.id
}

output "instance_count" {
	description = "Number of instances that are launched"
	value       = var.instance_count
}
