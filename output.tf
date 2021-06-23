output "web-internet" {
    value = "${aws_instance.web-internet.id}"
}
output "demo-mysqldb" {
    value  = "${aws_db_instance.demo-mysqldb.id}"
}
output "b" {
    value = "${aws_s3_bucket.my-tf-demo-bucket.id}"
}
output "public-subnet" {
    value = "${aws_subnet.public-subnet.id}"
}
output "vpc_id" {
    value = "${aws_vpc.dev.id}"
}
