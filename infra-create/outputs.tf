output "public_hostname" {
  value = aws_route53_record.record-public.fqdn
}

output "private_hostname" {
  value = aws_route53_record.record-private.fqdn
}