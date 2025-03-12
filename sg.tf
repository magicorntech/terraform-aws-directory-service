resource "aws_security_group_rule" "main" {
  count             = length(var.additional_ips) > 0 ? length(var.additional_ips) : 0
  description       = "Additional inbound traffic"
  type              = "ingress"
  protocol          = "-1"
  from_port         = 0
  to_port           = 0
  cidr_blocks       = [element(var.additional_ips[*], count.index)]
  security_group_id = aws_directory_service_directory.main.security_group_id
}
