# module "ec2_instance" {
#   source  = "terraform-aws-modules/ec2-instance/aws"
#   version = "~> 3.0"

#   for_each = toset(["one", "two", "three", "four", "five"])

#   name = "instance-${each.key}"

#   ami                    = "ami-03af6a70ccd8cb578"
#   instance_type          = "t2.micro"
#   key_name               = "user1"
#   monitoring             = true
#   vpc_security_group_ids = aws_security_group.web.id
#   subnet_id              = private_subnets.id
#   count = var.ec2_count 

#   tags = {
#     Terraform   = "true"
#     Environment = "dev"
#   }
# }