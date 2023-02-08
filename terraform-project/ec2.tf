resource "aws_instance" "first" {
  ami = "ami-095413544ce52437d"
  instance_type = "t2.micro"
  key_name = "terpro"
  security_groups = ["elb-sg"]
  user_data =<<EOF
  #!/bin/bash
  yum install httpd -y
  service httpd start
  chkconfig httpd on
  echo "THIS IS SERVER 1" > /var/www/html/index.html
  EOF
  tags = {
     Name = "First_web_server"
     source = "terraform"
  }
}


resource "aws_instance" "second" {
  ami = "ami-095413544ce52437d"
  instance_type = "t2.micro"
  key_name = "terpro"
  security_groups = ["elb-sg"]
  user_data =<<EOF
  #!/bin/bash
  yum install httpd -y
  service httpd start
  chkconfig httpd on
#  apt install apache2 -y
#  service start apache2
  echo "THIS IS SERVER 2" > /var/www/html/index.html
  EOF
  tags = {
     Name = "Second_web_server"
     source = "terraform"
  }
}


resource "aws_instance" "third" {
  ami = "ami-095413544ce52437d"
  instance_type = "t2.micro"
  key_name = "terpro"
  security_groups = ["elb-sg"]
  user_data =<<EOF
  #!/bin/bash
  yum install httpd -y
  service httpd start
  chkconfig httpd on
#  apt install apache2 -y
#  service start apache2
  echo "THIS IS SERVER 3" > /var/www/html/index.html
  EOF
  tags = {
     Name = "Third_web_server"
     source = "terraform"
  }
}
