output "demo-mysqldb" {
    value  = "${aws_db_instance.demo-mysqldb.id}"
}
output "public-subnet" {
    value = "${aws_subnet.public-subnet.id}"
}
output "vpc_id" {
    value = "${aws_vpc.dev.id}"
}
