resource "aws_instance" "server1" {
    ami = var.ami_id
    instance_type = "t2.micro"
    count = 1
    subnet_id = aws_subnet.subnet3.id
    associate_public_ip_address = true
    vpc_security_group_ids = [aws_security_group.sg_1.id,aws_security_group.sg_2.id]
    private_ip = "10.0.30.30"
    key_name = aws_key_pair.key_class01.id
    user_data = file("user_data.sh")

    tags = {
        Name = "server1"
        Owner = "Terraform"
        Environment = "DEV"
    }
}