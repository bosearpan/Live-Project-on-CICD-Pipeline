#Public sg
output "public_bastion_sg_group_id" {
  description = "ID"
  value       = module.public_bastion_sg.this_security_group_id
}
#Private sg
output "private_sg_group_id" {
  description = "ID"
  value       = module.private_sg.this_security_group_id
}
