resource "aws_vpc" "vpc" {
  cidr_block = "10.10.0.0/16" # 给我分配一个public的ip address，0/16就是区间。
  enable_dns_hostnames = true # 帮我dns解析，ip支持绑定域名，不需要手动解析
  enable_dns_support = true
}
