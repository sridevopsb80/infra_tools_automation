#defining aws ami RHEL-9-DevOps-Practice as a datasource

data "aws_ami" "rhel9" {
  most_recent = true
  name_regex  = "Redhat-9-DevOps-Practice" #name of the ami
  owners      = ["973714476881"]
}

# look up zone_id for sridevops.site
data "aws_route53_zone" "sridevops" {
  name = var.site_name
}

data "aws_route53_records" "sridevops" {
  zone_id = data.aws_route53_zone.sridevops.id
}