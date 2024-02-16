variable "common_tags" {
   default = {
     Project     = "roboshop"
     Environment = "dev"
     Terraform   = "true"
  }
}

variable "tags" {
   default = {
     Component = "user"
  }
}

variable "projectname" {
  default = "roboshop"
}
variable "environment" {
  default = "dev"
}

variable "zone_name" {
  default = "kalidindi.cloud"
}
variable app_version {
  
}
variable "iam_instance_profile" {
 default = "shellscriptroleforroboshop"
}