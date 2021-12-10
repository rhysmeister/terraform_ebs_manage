resource "aws_subnet" "subnet1" {
    vpc_id = aws_vpc.vpc.id
    cidr_block                      = "10.0.1.0/24"
    assign_ipv6_address_on_creation = false

    tags = {
        Name = "test-subnet1"
    }
}