terraform {
  // pull latest version because of bug on destroy - aws_auth can't get removed  
  //required_version = ">= 0.12"
  /*required_providers {
    random = "~> 2.1"
    local = "~> 1.2"
    null = "~> 2.1"
    template = "~> 2.1"
    kubernetes = "~> 1.13"
  }*/
}

/*
** Defining provider versions inside provider block deprecated in Terraform 0.13 and above  
**
provider "random" {
  version = "~> 2.1"
}
*/