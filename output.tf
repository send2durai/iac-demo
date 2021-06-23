output "web-internet" {
    value = "${aws_instance.web-internet.public_ip}"
}
output "public_ip" {
    value = "${aws_instance.web-intranet.public_ip}"
}

output "demo-mysqldb" {
    value  = "${aws_db_instance.demo-mysqldb}"
}
output "b" {
    value = "${aws_s3_bucket.my-tf-demo-bucket}"
}
output "subnet" {
    value = "${aws_subnet.private-id}"
}
output "subnet" {
    value = "${aws_subnet.public-id}"
}
output "vpc_id" {
    value = "${aws_vpc.default.id}"
}
