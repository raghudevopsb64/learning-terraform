resource "aws_instance" "sample" {
  instance_type = "t3.micro"
  ami           = "ami-0fecabf044da28381"
}
