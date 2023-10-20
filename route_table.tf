#creating route table.tf file
resource "aws_route_table""route"{
vpc_id=aws_vpc.demovpc.id
tags={
Name="route to internet"
}
}
resource "aws_route""default_route"{
route_table_id =aws_route_table.route.id
destination_cidr_block = "0.0.0.0/0"
gateway_id=aws_internet_gateway.demogateway.id
}
resource"aws_route_table_association""rtl"{
subnet_id=aws_subnet.public-subnet-1.id
route_table_id=aws_route_table.route.id
}
resource"aws_route_table_association""rt2"{
subnet_id=aws_subnet.public-subnet-2.id
route_table_id=aws_route_table.route.id
}
