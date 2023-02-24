output "vpc_arn" {
  value = module.vpc.vpc_arn
}

#output "subnet_id" {
#  value = one(module.vpc.private_subnets) # there is a known issue with terraform lists as outputs for proton
#}

output "private_subnet_id" {
  value          = [for az, subnet in aws_subnet.private: subnet.id]
}
output "public_subnet_id" {
  value          = [for az, subnet in aws_subnet.public: subnet.id]
}

output "security_group_id" {
  value = module.vpc.default_security_group_id
}
