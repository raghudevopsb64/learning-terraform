module "frontend" {
  source        = "./common"
  INSTANCE_TYPE = "t3.micro"
  AMI           = "ami-0fecabf044da28381"
  COMPONENT     = "frontend"
  PORT          = 80
}

module "monogdb" {
  source        = "./common"
  INSTANCE_TYPE = "t3.micro"
  AMI           = "ami-0fecabf044da28381"
  COMPONENT     = "mongodb"
  PORT          = 27017
}
