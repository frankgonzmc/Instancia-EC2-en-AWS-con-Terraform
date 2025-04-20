module "ssh" {
  source       = "./modules/ssh"
  key_name     = var.key_name
  public_key   = file(var.public_key_path)
}

module "security_group" {
  source = "./security-groups"
}

module "ec2" {
  source           = "./modules/ec2"
  key_name         = module.ssh.key_name
  security_group_id = module.security_group.security_group_id
}
