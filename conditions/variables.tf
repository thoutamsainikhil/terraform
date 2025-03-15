variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is RHEL9 AMI ID"
}

variable "environment" {
  default = "prod"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
}

variable "ec2_tags" {
  type        = map
  default     = {
    Project = "expense"
    Component ="backend"
    Encironment = "dev"
    Name = "expense-backend-dev"
  }
  description = "description"
}

variable "from_port" {
  type        = number
  default     = 22
}

variable "to_port" {
  type        = number
  default     = 22
}

variable "cide_blocks" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
}


variable "sg_tags" {
  type        = map
  default     = {
    Name = "expense-backend-dev"
  }
}


# command line ---> -var "<var-name>=<var-value>"
# tfvars
# env var
# default values
# user prompt