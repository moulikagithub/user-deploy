data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${var.projectname}/${var.environment}/private_subnet_ids"
}
data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.projectname}/${var.environment}/vpc_id"
}
data "aws_ssm_parameter" "app_alb_sg_id" {
  name = "/${var.projectname}/${var.environment}/app_alb_sg_id"
}
data "aws_ssm_parameter" "user_sg_id" {
  name = "/${var.projectname}/${var.environment}/user_sg_id"
}
data "aws_ssm_parameter" "app_alb_listener_arn" {
  name = "/${var.projectname}/${var.environment}/app_alb_listener_arn"
}