output "vpc_id" {
  value = aws_vpc.splunk-vpc.id
}


output "splunk-sg" {
  value = aws_security_group.splunk-sg.id


}

output "ec2_pubip" {
  value = aws_instance.splunk-server.public_ip

}