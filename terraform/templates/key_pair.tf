module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name   = "my_public_key"
  public_key = local.ec2_creds.my_public_key


}
