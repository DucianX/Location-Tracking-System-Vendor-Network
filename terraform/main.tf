terraform {
  required_providers {
    # manipulate对象是谁
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.0" # 大于4.0版本以上即可
    }
  }

  backend "s3" {

  }
}
# 这里是环境变量的读取。在github action variables里面
provider "aws" {
  region = "${var.aws.region}" 
}

//