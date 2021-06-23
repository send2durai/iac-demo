output "public_ip" {
    value = "${aws_instance.web-internet.public_ip}"
}
output "public_ip" {
    value = "${aws_instance.web-intranet.public_ip}"
}

output "aws_db_instance" {
    value  = "${aws_db_instance.demo-mysqldb}"
}
output "aws_s3_bucket" {
    value = "${aws_s3_bucket.my-tf-demo-bucket}"
}
output "aws_subnet" {
    value = "${aws_subnet.private-subnet}"
}
output "aws_subnet" {
    value = "${aws_subnet.public-subnet}"
}
output "aws_vpc" {
    value = "${aws_vpc.dev}"
}
