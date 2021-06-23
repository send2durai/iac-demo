output "demo-mysqldb" {
    value  = "${aws_db_instance.demo-mysqldb.id}"
}
output "public-subnet" {
    value = "${aws_subnet.aws_vpc.dev.public-subnet.id}"
}
output "private-subnet" {
    value = "${aws_subnet.aws_vpc.dev.private-subnet.id}"

output "vpc_id" {
    value = "${aws_vpc.dev.id}"
}
