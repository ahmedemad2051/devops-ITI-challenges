resource "aws_instance" "web" {
  ami           = "ami-0027eed75be6f3bf4"
  key_name = "${aws_key_pair.deployer.key_name}"
  instance_type = "t2.micro"
  vpc_security_group_ids  = ["${aws_security_group.sg_task1.id}"]

  tags = {
    Name = "web"
  }
}