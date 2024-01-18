terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
  shared_credentials_file = "/Users/ross/.aws/credentials"
  profile                 = "cli"
}

resource "aws_vpc" "PLEX" {
  cidr_block = "172.31.0.0/16"
  enable_dns_hostnames  = true
  enable_dns_support    = true

  tags = {
    Name        = "PLEX"
   }
}

resource "aws_subnet" "subnet172-31-50" {
  vpc_id     = "vpc-07dbcf990a823b4bf"
  cidr_block = "172.31.50.0/24"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "subnet172-31-51" {
  vpc_id     = "vpc-07dbcf990a823b4bf"
  availability_zone = "us-east-2a"
  cidr_block = "172.31.51.0/24"
  map_public_ip_on_launch = false
}

resource "aws_subnet" "subnet172-31-52" {
  vpc_id     = "vpc-07dbcf990a823b4bf"
  availability_zone = "us-east-2a"
  cidr_block = "172.31.52.0/24"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "subnet172-31-53" {
  vpc_id     = "vpc-07dbcf990a823b4bf"
  availability_zone = "us-east-2a"
  cidr_block = "172.31.53.0/24"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "subnet172-31-54" {
  vpc_id     = "vpc-07dbcf990a823b4bf"
  availability_zone = "us-east-2a"
  cidr_block = "172.31.54.0/24"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "subnet172-31-55" {
  vpc_id     = "vpc-07dbcf990a823b4bf"
  availability_zone = "us-east-2a"
  cidr_block = "172.31.55.0/24"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "subnet172-31-100" {
  vpc_id     = "vpc-07dbcf990a823b4bf"
  availability_zone = "us-east-2a"
  cidr_block = "172.31.100.0/24"
  map_public_ip_on_launch = true
}

resource "aws_key_pair" "root_key" {
  key_name   = "root_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCZgvnbXK0RHNLh04/e7osPDIoFhvEOf9qdqddIGuaPE80SA2c2HbjVUfB1IBW6rfIYaMif6e8MyTp878iVQXscD9HDLRjgJVRuw2PWy2zWBPqALlRuwUj3nCT3vngEObITHOfMlW1Kev8kYVZNBmG5rRAWoMeeBzUW7lOwPa2qUInpLveVYXlxiIAhoBxyIx3039wI5NuTLIc/1dCUyQ+svfIelzy3UA18bAXQW7gXl+RpVCM2NzmiZNSlBn+Rz7xkkQk5UQFkq3gp1F8FJma6alqAMhNQSMzzgeM8dOJKxvqYmz5sSSD5CEHvbW6jHHGMJJu1fiilnlZr5e9lYKZ/ ross@ross.lopez.afs"
}

resource "aws_key_pair" "windows_key" {
  key_name   = "windows_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC8NQ9H+l6WkPpdyb61peBGZE+Rw9akpsMpIl9cb4BesdnLcnqsfhJ8v3lUFIY2OwVokliqJt9l36SRvCdPbmMfWIEWRZr8Xf9yhMtDhDC8fC2zmCayzFK02vX7QKaebHQNkETwPQ4/Jh0fHc552iwl4dyAx3ulnshMjGXtPqPRnSLSC4Xg4RZKSMi48DHIiY/UKJd6oShlijIfCTFUSlRrmEyLUegr89T+BGmOCcTic0535LcwfFoRrBUaWHzmhzhKudF/Asru/5BS+ZhacoeZr7Q7AD6JdcSB0tZCtxnpqK8OdwK5qzWtcKDdIyt7lrh1yTTO+2h4g62suevJTSnBqXnx1l04ktmYHZ7JONW+72h/GArZQx0zhuZfAFURicJOYgH8BfKR7eTJNF5GLMl0NKuCd6Wcl0P2vPGe2eP97LgRcg4gvyBfR0lvxyUp6LUUGUNmROAxJFnay1jxfIE3woWnkcr+pkHfq6lLmN+CsTUWkbzEUAmNy7AvqGAdh3k= ross@ross.lopez.afs"
}

resource "aws_key_pair" "pruitt_key" {
  key_name   = "pruitt_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDsXjouXMNOMlH0JFoWM4Ul8ofJ8oZNnGUlO+hxB7VMvZMb9UQiZT6FRjN2FrC6yqPIWv9QBxFx3/9zQCi63Vthr9WlDNcz10uErW2hKvmhd4BWRaQLNVchqn6O67pCxE2/P3n5srL2S0ggidIeqCM0FoQ4uoKf+gUVir4A84sMzIs0m+NQY1DlOT7QSPIFonzM7ax1BD6Y9R+icA/egRLvaVn2ALQZhinaYCE1+vWvp5mJwj5ZTc6JEKclTA4CgC9sewYi1WbXkwaFf0HVZ0V39TS2wieeGOHC/bQW35FSgpw4O7zIfwjD5MBHYUDcm1V/wmfwTtnP+83nd9h5cmrDTmGKzELmgngpMPBmaFibu3vAye/e1lOcVvZdM2iHPU7G8mMrD0j3oJge7MYxYGTR94fdeZ0QmMdx+D0XYXvnw4IPFC7z/cnwWgMSdnWLL3rnQkE/hy10vmJedFUcriYxM9zVRZj8RJFFgd9UzuCUCgC0W7vOcYxC6Hx+YBce47V+jzH+eiHRzks28E4NfrPesqnU3G2oRkmZxF3GgyKAK/G4yVxlmJRfI/0G+QfgCrXOYgdaQWjT/xghr1cutyw1GJ7vM6+n3b+r0NqnVXavw56k+VywBWeEvLQKYlBSTQIpNmldIGWBsfEpbUJk0zjr3HPAI1oFkIHiv74CQUTm5w== pruitt@afs"
}

resource "aws_security_group" "PLEXPUBSG" {
  name        = "plexpubsg"
  description = "Security Group for inbound access on public interfaces"
  vpc_id      = "vpc-07dbcf990a823b4bf"

  #ingress {
  #  description      = "ssh"
  #  from_port        = 22
  #  to_port          = 22
  #  protocol         = "tcp"
  #  cidr_blocks      = ["96.244.58.58/32","136.226.12.201","172.31.0.0/16"]
  #}

  #ingress {
  #  description      = "dns"
  #  from_port        = 53
  #  to_port          = 53
  #  protocol         = "udp"
  #  cidr_blocks      = ["96.244.58.58/32","136.226.12.201","172.31.0.0/16"]
  #}

  #ingress {
  #  description      = "dns (tcp)"
  #  from_port        = 53
  #  to_port          = 53
  #  protocol         = "tcp"
  #  cidr_blocks      = ["96.244.58.58/32","136.226.12.201","172.31.0.0/16"]
  #}

  #ingress {
  #  description      = "https"
  #  from_port        = 443
  #  to_port          = 443
  #  protocol         = "tcp"
  #  cidr_blocks      = ["96.244.58.58/32","136.226.12.201","172.31.0.0/16"]
  #}

  #ingress {
  #  description      = "http"
  #  from_port        = 80
  #  to_port          = 80
  #  protocol         = "tcp"
  #  cidr_blocks      = ["96.244.58.58/32","136.226.12.201","172.31.0.0/16"]
  #}

  #ingress {
  #  description      = "rdp"
  #  from_port        = 3389
  #  to_port          = 3389
  #  protocol         = "tcp"
  #  cidr_blocks      = ["96.244.58.58/32","136.226.12.201","172.31.0.0/16"]
  #}

  ingress {
    description      = "all"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["96.244.58.58/32","136.226.12.201/32","136.226.18.76/32","172.31.0.0/16","3.137.199.128/32","64.98.71.7/32","3.147.205.167/32","136.226.6.80/32","3.130.101.192/32","18.220.93.128/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  } 
}

resource "aws_security_group" "PLEXPRIVSG" {
  name        = "plexprivsg"
  description = "Security Group for inbound access on private interfaces"
  vpc_id      = "vpc-07dbcf990a823b4bf"

  ingress {
    description      = "ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "https"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  } 
}

### F01 ###
# NETWORK INT FOR F01
resource "aws_network_interface" "f01eth0" {
  subnet_id = aws_subnet.subnet172-31-50.id
  private_ips = ["172.31.50.100"]
  security_groups = [aws_security_group.PLEXPRIVSG.id]
  source_dest_check = false
}

resource "aws_network_interface" "f01eth1" {
  subnet_id = aws_subnet.subnet172-31-51.id
  private_ips = ["172.31.51.100"]
  security_groups = [aws_security_group.PLEXPRIVSG.id]
  source_dest_check = false
}

resource "aws_instance" "F01" {
    ami = "ami-02fc473bb6365e2af"
    instance_type = "m4.large"
    key_name = "root_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 30
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.f01eth0.id
    device_index         = 0
    }

    network_interface {
    network_interface_id = aws_network_interface.f01eth1.id
    device_index         = 1
    }

    tags = {
      Name    ="F01"
    }
}

resource "aws_eip" "f01eip" {
  vpc      = true
  network_interface = aws_network_interface.f01eth0.id
}


### BIND SERVER
resource "aws_network_interface" "bind01eth0" {
  subnet_id = aws_subnet.subnet172-31-52.id
  private_ips = ["172.31.52.50"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "bind01" {
    ami = "ami-05f2061f05e942fcd"
    instance_type = "t3.small"
    key_name = "root_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 40
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.bind01eth0.id
    device_index         = 0
    }
    tags = {
      Name    ="NS01"
    }
}

### vsFTPd SERVER
resource "aws_network_interface" "vsftpd01eth0" {
  subnet_id = aws_subnet.subnet172-31-52.id
  private_ips = ["172.31.52.51"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "vsftpd01" {
    ami = "ami-05f2061f05e942fcd"
    instance_type = "t3.small"
    key_name = "root_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 40
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.vsftpd01eth0.id
    device_index         = 0
    }
    tags = {
      Name    ="FTP01"
    }
}

### Wordpress SERVER
resource "aws_network_interface" "wordpress01eth0" {
  subnet_id = aws_subnet.subnet172-31-52.id
  private_ips = ["172.31.52.52"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "wordpress01" {
    ami = "ami-03dad8e82ecd7f089"
    instance_type = "t3.small"
    key_name = "root_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 40
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.wordpress01eth0.id
    device_index         = 0
    }
    tags = {
      Name    ="WP01"
    }
}

### DC01 SERVER
resource "aws_network_interface" "dc01eth0" {
  subnet_id = aws_subnet.subnet172-31-53.id
  private_ips = ["172.31.53.50"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "dc01" {
    ami = "ami-06fe4639440b3ab22"
    instance_type = "t3.large"
    key_name = "windows_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 50
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.dc01eth0.id
    device_index         = 0
    }
    tags = {
      Name    ="DC01"
    }
}

### DC02 SERVER
resource "aws_network_interface" "dc02eth0" {
  subnet_id = aws_subnet.subnet172-31-53.id
  private_ips = ["172.31.53.51"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "dc02" {
    ami = "ami-06fe4639440b3ab22"
    instance_type = "t2.large"
    key_name = "windows_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 50
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.dc02eth0.id
    device_index         = 0
    }
    tags = {
      Name    ="DC02"
    }
}

### MYSQL SERVER
resource "aws_network_interface" "mysql01eth0" {
  subnet_id = aws_subnet.subnet172-31-53.id
  private_ips = ["172.31.53.52"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "mysql01" {
    ami = "ami-05f2061f05e942fcd"
    instance_type = "t2.medium"
    key_name = "root_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 40
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.mysql01eth0.id
    device_index         = 0
    }
    tags = {
      Name    ="MYSQL01"
    }
}

### SAMBA SERVER
resource "aws_network_interface" "samba01eth0" {
  subnet_id = aws_subnet.subnet172-31-53.id
  private_ips = ["172.31.53.53"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "samba01" {
    ami = "ami-05f2061f05e942fcd"
    instance_type = "t3.small"
    key_name = "root_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 40
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.samba01eth0.id
    device_index         = 0
    }
    tags = {
      Name    ="SMB01"
    }
}

### Win Desktop1
resource "aws_network_interface" "win01eth0" {
  subnet_id = aws_subnet.subnet172-31-54.id
  private_ips = ["172.31.54.50"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "win01" {
    ami = "ami-08006a724fa195764"
    instance_type = "t3.medium"
    key_name = "windows_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 60
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.win01eth0.id
    device_index         = 0
    }
    tags = {
      Name    ="WIN01"
    }
}

### Win Desktop2
resource "aws_network_interface" "win02eth0" {
  subnet_id = aws_subnet.subnet172-31-54.id
  private_ips = ["172.31.54.51"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "win02" {
    ami = "ami-08006a724fa195764"
    instance_type = "t3.medium"
    key_name = "windows_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 60
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.win02eth0.id
    device_index         = 0
    }
    tags = {
      Name    ="WIN02"
    }
}

### Win Desktop3
resource "aws_network_interface" "win03eth0" {
  subnet_id = aws_subnet.subnet172-31-54.id
  private_ips = ["172.31.54.52"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "win03" {
    ami = "ami-08006a724fa195764"
    instance_type = "t3.medium"
    key_name = "windows_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 60
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.win03eth0.id
    device_index         = 0
    }
    tags = {
      Name    ="WIN03"
    }
}

### Win Desktop4
resource "aws_network_interface" "win04eth0" {
  subnet_id = aws_subnet.subnet172-31-54.id
  private_ips = ["172.31.54.53"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "win04" {
    ami = "ami-08006a724fa195764"
    instance_type = "t3.medium"
    key_name = "windows_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 60
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.win04eth0.id
    device_index         = 0
    }
    tags = {
      Name    ="WIN04"
    }
}

### Win Desktop5
resource "aws_network_interface" "win05eth0" {
  subnet_id = aws_subnet.subnet172-31-54.id
  private_ips = ["172.31.54.54"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "win05" {
    ami = "ami-08006a724fa195764"
    instance_type = "t3.medium"
    key_name = "windows_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 60
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.win05eth0.id
    device_index         = 0
    }
    tags = {
      Name    ="WIN05"
    }
}

### Win Desktop6
resource "aws_network_interface" "win06eth0" {
  subnet_id = aws_subnet.subnet172-31-54.id
  private_ips = ["172.31.54.55"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "win06" {
    ami = "ami-08006a724fa195764"
    instance_type = "t3.medium"
    key_name = "windows_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 60
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.win06eth0.id
    device_index         = 0
    }
    tags = {
      Name    ="WIN06"
    }
}

### Win Desktop7
resource "aws_network_interface" "win07eth0" {
  subnet_id = aws_subnet.subnet172-31-54.id
  private_ips = ["172.31.54.56"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "win07" {
    ami = "ami-08006a724fa195764"
    instance_type = "t3.medium"
    key_name = "windows_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 60
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.win07eth0.id
    device_index         = 0
    }
    tags = {
      Name    ="WIN07"
    }
}

### Security Onion 1
resource "aws_network_interface" "so01eth0" {
  subnet_id = aws_subnet.subnet172-31-53.id
  private_ips = ["172.31.53.60"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_network_interface" "so01eth1" {
  subnet_id = aws_subnet.subnet172-31-53.id
  private_ips = ["172.31.53.61"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "so01" {
    ami = "ami-0357700dc19a80dc0"
    instance_type = "t3a.2xlarge"
    key_name = "root_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 256
        volume_type = "gp3"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.so01eth0.id
    device_index         = 0
    }
    
    network_interface {
    network_interface_id = aws_network_interface.so01eth1.id
    device_index         = 1
    }    

    tags = {
      Name    ="SO01"
    }
}
 
resource "aws_eip" "so01eip" {
  vpc      = true

  network_interface = aws_network_interface.so01eth0.id
}

### graylog SERVER
resource "aws_network_interface" "log01eth0" {
  subnet_id = aws_subnet.subnet172-31-53.id
  private_ips = ["172.31.53.55"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "log01" {
    ami = "ami-03dad8e82ecd7f089"
    instance_type = "t2.large"
    key_name = "root_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 50
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.log01eth0.id
    device_index         = 0
    }
    tags = {
      Name    ="LOG01"
    }
}

### IC SERVER
resource "aws_network_interface" "ic01eth0" {
  subnet_id = aws_subnet.subnet172-31-55.id
  private_ips = ["172.31.55.50"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "ic01" {
    ami = "ami-03dad8e82ecd7f089"
    instance_type = "t3.small"
    key_name = "root_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 40
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.ic01eth0.id
    device_index         = 0
    }
    tags = {
      Name    ="IC01"
    }
}

#### GRAY SPACE #####

# Allocate an Elastic IP
resource "aws_eip" "nat_eip" {
  vpc = true
}

# Create a NAT Gateway and associate it with the Elastic IP
resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.subnet172-31-100.id

  tags = {
    Name = "Gray Space NAT Gateway"
  }
}

### KALI SERVER
resource "aws_network_interface" "kali01eth0" {
  subnet_id = aws_subnet.subnet172-31-100.id
  private_ips = ["172.31.100.100"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "kali01" {
    ami = "ami-0d1aa472e0dcfcba5"
    instance_type = "t3.small"
    key_name = "pruitt_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 40
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.kali01eth0.id
    device_index         = 0
    }
    tags = {
      Name    ="KALI01"
    }
}

### Win Desktop PT
resource "aws_network_interface" "pteth0" {
  subnet_id = aws_subnet.subnet172-31-100.id
  private_ips = ["172.31.100.101"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "pt01" {
    ami = "ami-08006a724fa195764"
    instance_type = "t3.medium"
    key_name = "windows_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 60
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.pteth0.id
    device_index         = 0
    }
    tags = {
      Name    ="PT01"
    }
}

### KALI SERVER
resource "aws_network_interface" "kali02eth0" {
  subnet_id = aws_subnet.subnet172-31-100.id
  private_ips = ["172.31.100.102"]
  security_groups = [aws_security_group.PLEXPUBSG.id]
}

resource "aws_instance" "kali02" {
    ami = "ami-0d1aa472e0dcfcba5"
    instance_type = "t3.small"
    key_name = "root_key"
    availability_zone = "us-east-2a"
    tenancy = "default"
    ebs_optimized = false
    root_block_device {
        volume_size = 40
        volume_type = "gp2"
        delete_on_termination = true
    }
    network_interface {
    network_interface_id = aws_network_interface.kali02eth0.id
    device_index         = 0
    }
    tags = {
      Name    ="KALI02"
    }
}