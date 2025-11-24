
resource "aws_security_group" "web_sg" {
  name        = "web-sg"             # security group name
  description = "Allow SSH and HTTP" # brief purpose

  ingress {
    from_port   = 22                  # SSH start port
    to_port     = 22                  # SSH end port (same as start)
    protocol    = "tcp"               # protocol
    cidr_blocks = ["0.0.0.0/0"]       # allow from anywhere (use caution)
  }

  ingress {
    from_port   = 80                  # HTTP port
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]       # allow from anywhere
  }

  egress {
    from_port   = 0                   # allow all outbound ports
    to_port     = 0
    protocol    = "-1"                # all protocols
    cidr_blocks = ["0.0.0.0/0"]       # allow outbound to anywhere
  }
}

