variable "region" {
  type    = string
  default = "us-east-1"
}

variable "env" {
  type    = string
  default = "dev"
}

variable "availability_zones" {
  description = "List of availability zones in which to create subnets"
  type        = list(string)
  # default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  # default     = "10.0.0.0/16"
}
variable "inbound_ports" {
  description = "List of inbound ports for which NACL & Security group rules will be created"
  type        = list(string)
  # default     = ["80", "443"]
}


variable "rds_egress_from_port" {
  type = number
  # default     = 3306
}

variable "rds_egress_to_port" {
  type = number
  # default     = 3306
}



# variable "subnet_ids" {
#   type        = list(string)
#   description = "List of subnet IDs for the ASG and ALB"
# }

# variable "security_group_ids" {
#   type        = list(string)
#   description = "List of security group IDs for the EC2 instances and ALB"
# }

# variable "vpc_id" {
#   type        = string
#   description = "The VPC ID where the resources will be deployed"
# }

##########3 RDS Database ##############

variable "db_identifier" {
  type = string
}
variable "db_instance_class" {
  type = string
}

variable "db_engine" {
  type = string
}
variable "db_engine_version" {
  type = string
}

variable "db_storage" {
  type = number
}
variable "db_storage_type" {
  type = string
}

variable "db_username" {
  type = string
}

variable "backup_retention_period" {
  type = number
}

######### Public Backend App #########
variable "public_app_ami" {
  type        = string
  description = "The AMI ID for the EC2 instances"
  default     = null
}
variable "alb_name" {
  type = string
}

variable "alb_tg_port" {
  type        = number
  description = "ALB Target Group Port"
}

variable "alb_tg_protocol" {
  type        = string
  description = "ALB Target Group Protocol"
}

variable "alb_listener_port" {
  type        = number
  description = "ALB Target Group Port"
}

variable "alb_listener_protocol" {
  type        = string
  description = "ALB Target Group Protocol"
}

## private Backend App ####
variable "private_app_ami" {
  type        = string
  description = "The AMI ID for the EC2 instances"
  default     = null
}
variable "nlb_name" {
  type = string
}

variable "nlb_tg_port" {
  type        = number
  description = "ALB Target Group Port"
  default     = 80
}

variable "nlb_tg_protocol" {
  type        = string
  description = "ALB Target Group Protocol"
  default     = "TCP"
}

variable "nlb_listener_port" {
  type        = number
  description = "ALB Target Group Port"
  default     = 80
}

variable "nlb_listener_protocol" {
  type        = string
  description = "ALB Target Group Protocol"
  default     = "TCP"
}

variable "instance_type" {
  type        = string
  description = "The instance type for the EC2 instances"
}

variable "min_size" {
  type    = number
  default = 0
}

variable "max_size" {
  type    = number
  default = 3
}

variable "desired_capacity" {
  type    = number
  default = 1
}