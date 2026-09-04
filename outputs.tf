output "public_hostnames" {
  value = {
    for name, instance in module.tool-infra-create :
    name => instance.public_hostname
  }
}

output "private_hostnames" {
  value = {
    for name, instance in module.tool-infra-create :
    name => instance.private_hostname
  }
}
