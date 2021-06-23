output "demo-mysqldb" {
    value  = "${aws_db_instance.demo-mysqldb.id}"
}
output "public-subnet" {
    value = "${aws_subnet.public-subnet.id}"
}
output "private-subnet" {
    value = "${aws_subnet.private-subnet.id}"
}

output "vpc_id" {
    value = "${aws_vpc.dev.id}"
}
output "web-internet" {
    value = "${aws_instance.web-internet[count.index]}"
}
output "web-intranet" {
    value = "${aws_instance.web-intranet[count.index]}"
}
