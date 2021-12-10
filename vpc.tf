resource "aws_vpc" "vpc" {
    cidr_block                      = "10.0.0.0/16"
    instance_tenancy                 = "default"
    enable_dns_support               = true
    enable_dns_hostnames             = false
    assign_generated_ipv6_cidr_block = false

    tags = {
        Name = "test-vpc"
    }
}