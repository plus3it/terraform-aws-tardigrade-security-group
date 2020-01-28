provider aws {
  region = "us-east-1"
}

module "no_create_sg" {
  source = "../../"
  providers = {
    aws = aws
  }

  create_sg = false
  name      = "tardigrade-security-group-testing"
  vpc_id    = null
  tags = {
    environment = "testing"
  }
}
