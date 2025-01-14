variable "aws_region" {
// 已经在aws的环境变量里配置过
  default = "us-east-1"
}

# 和repo保持一致。
variable "app_name" {
  default = "Location-Tracking-System-Vendor-Network"
  description = "Name of the application"
}
# 配置子网
# 如果有默认的public/private subset，已经自己config了可以自己写；
# 如果需要分配：那么就写1010.00。后面的24代表0-24的区间。
# 为什么有两个数字：如果第一个ip不可用，那就分配下一个ip（帮我准备两个）
variable "public_subnets" {
  default = ["10.10.100.0/24", "10.10.101.0/24"]
}

variable "private_subnets" {
  default = ["10.10.0.0/24", "10.10.1.0/24"]
}

# 为什么有两个zones：第二个是backup
variable "availability_zones" {
  default = ["us-east-1a", "us-east-1b"]
}
