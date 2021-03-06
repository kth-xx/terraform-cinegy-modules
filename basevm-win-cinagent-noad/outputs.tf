output "instance_id" {
  value = aws_instance.vm.id
}

output "instance_hostname" {
  value = "${var.host_name_prefix}-${upper(var.environment_name)}"
}

output "instance_public_address" {
  value = aws_instance.vm.public_ip
}

output "instance_local_administrator_password" {
  value = rsadecrypt(
    aws_instance.vm.password_data,
    data.aws_secretsmanager_secret_version.privatekey.secret_string,
  )
}

