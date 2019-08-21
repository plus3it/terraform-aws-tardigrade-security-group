provider "aws" {}

resource "aws_security_group" "this" {
  count = "${var.create_sg ? 1 : 0}"

  name                   = "${var.name}"
  description            = "${var.description}"
  vpc_id                 = "${var.vpc_id}"
  ingress                = ["${var.ingress_rules}"]
  egress                 = ["${var.egress_rules}"]
  revoke_rules_on_delete = "${var.revoke_rules_on_delete}"
  tags                   = "${var.tags}"
}
