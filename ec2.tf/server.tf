# ec2 creation server
resource "aws_instance" "crm-webserver" {
  ami           = "ami-084568db4383264d4" 
  instance_type = "t2.micro"
  subnet_id   = aws_subnet.crm-web-subnet.id
  key_name ="lmskey"
  user_data= file("setup.sh")
  tags = {
Name= "crm-web-serversv"
}
}