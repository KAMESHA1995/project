
# resource "aws_security_group" "web" {
#   name        = "web"
#   vpc_id      = var.vpc_id

#   ingress {
#     from_port   = 443
#     to_port     = 443
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
    
#   }

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }   

#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
    
#   }


#   egress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#      cidr_blocks = ["10.0.3.0/24", "10.0.4.0/24"]
#     # security_group_id = aws_security_group.app

    
#   }
# }


# resource "aws_security_group" "app" {
# name        = "app"
#   vpc_id      = var.vpc_id

#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24"]
#     # security_group_id = aws_security_group.web
#   }


#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#      cidr_blocks = ["10.0.5.0/24", "10.0.6.0/24"]
#     # security_group_id = aws_security_group.db

    
#   }
# }

# resource "aws_security_group" "db" {
# name        = "db"
#   vpc_id      = var.vpc_id

#   ingress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["10.0.3.0/24", "10.0.4.0/24"]
#     # security_group_id = aws_security_group.app
#   }


#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]

    
#   }
# }