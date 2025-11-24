
# Key pair from local public key
resource "aws_key_pair" "web_key" {            # import local public key so EC2 can use it for SSH
  key_name   = "hemanth_web_key"               # name for the key pair in AWS
  public_key = file(var.public_key_path)       # path to local public key file
}


# Amazon Linux 2
data "aws_ami" "al2" {                       # lookup most recent Amazon Linux 2 AMI
  most_recent = true                         # return the latest matching AMI
  owners      = ["amazon"]                   # restrict to AMIs published by Amazon

  filter {                                   # match by AMI name pattern
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "web" {
  ami                    = data.aws_ami.al2.id                # AMI id from data lookup
  instance_type          = var.instance_type                  # EC2 instance size
  key_name               = aws_key_pair.web_key.key_name      # attach key pair for SSH
  vpc_security_group_ids = [aws_security_group.web_sg.id]     # associate security group

  tags = {
    Name = "terraform-ansible-web"                            # Name tag for the instance
  }
}

