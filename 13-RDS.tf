#create our rds DB using TF
resource "aws_db_subnet_group" "myrds_subnet" {
  name       = "rds1_subnets"
  subnet_ids = [aws_subnet.tokyo_subnet_private_1c.id, aws_subnet.tokyo_subnet_private_1d.id]
  tags = {
    Name = "First RDS Subnet"
  }
}
resource "aws_db_instance" "myrds" {
    engine = "mysql"
    allocated_storage = 20
    availability_zone = "ap-northeast-1c"
    db_subnet_group_name = aws_db_subnet_group.myrds_subnet.id
    instance_class = "db.t3.micro"
    storage_type = "gp2"
    port = 3306
    identifier = "thedb"
    username = "admin"
    password = "password"
    skip_final_snapshot = true
}

resource "aws_db_subnet_group" "myrds_subnet2" {
  name       = "rds2_subnets"
  subnet_ids = [aws_subnet.tokyo_subnet_private_1c.id, aws_subnet.tokyo_subnet_private_1d.id]
  tags = {
    Name = "Second RDS Subnet"
  }
}
resource "aws_db_instance" "myrds2" {
    engine = "mysql"
    allocated_storage = 20
    availability_zone = "ap-northeast-1d"
    db_subnet_group_name = aws_db_subnet_group.myrds_subnet2.id
    instance_class = "db.t3.micro"
    storage_type = "gp2"
    port = 3306
    identifier = "thedb2"
    username = "admin"
    password = "password"
    skip_final_snapshot = true
}