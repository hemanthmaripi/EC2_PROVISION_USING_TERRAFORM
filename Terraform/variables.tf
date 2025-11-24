
variable "key_name" {
  description = "Name of the existing AWS key pair"  # variable purpose
  type        = string                               # must be a string
  default     = "hemanth_web_key"                    # default key pair name
}

variable "public_key_path" {
  description = "Path to local public key to import"  # local public key path
  type        = string                                # string path
  default     = "~/.ssh/aws_vpc_key.pub"              # default public key path
}

variable "instance_type" {
  description = "EC2 instance type"   # controls EC2 size
  type        = string                # string like "t3.micro"
  default     = "t3.micro"            # default instance type
}

