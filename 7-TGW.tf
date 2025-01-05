###### japan ######################

resource "aws_ec2_transit_gateway" "tokyo_transit" {
  provider = aws.tokyo

description = "tg-web-backend-database"
  tags = {
    Name = "Web-Backend-Database Transit Gateway"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "tokyo_tga_public" {
  provider = aws.tokyo
  subnet_ids         = [aws_subnet.tokyo_subnet_public_1a.id, aws_subnet.tokyo_subnet_public_1c.id]
  transit_gateway_id = aws_ec2_transit_gateway.tokyo_transit.id
  vpc_id             = aws_vpc.tokyo_vpc.id 
}

# resource "aws_ec2_transit_gateway_vpc_attachment" "tokyo_tga_private" {
#   provider = aws.tokyo
#   subnet_ids         = [aws_subnet.tokyo_subnet_private_1a.id, aws_subnet.tokyo_subnet_private_1c.id]
#   transit_gateway_id = aws_ec2_transit_gateway.tokyo_transit.id
#   vpc_id             = aws_vpc.tokyo_vpc.id 
# }




# ###### virginia  #############################################################################

resource "aws_ec2_transit_gateway" "virginia_transit" {
  provider = aws.virginia

description = "tg-web-backend-database"
  tags = {
    Name = "Web-Backend-Database Transit Gateway"
  }
}



resource "aws_ec2_transit_gateway_vpc_attachment" "virginia_public_1a" {
  provider = aws.virginia
  subnet_ids         = [aws_subnet.virginia_subnet_public_1a.id, aws_subnet.virginia_subnet_public_1b.id]
  transit_gateway_id = aws_ec2_transit_gateway.virginia_transit.id
  vpc_id             = aws_vpc.virginia_vpc.id
}

# resource "aws_ec2_transit_gateway_vpc_attachment" "private-storage-us-east-1b" {
#    #provider = aws.virginia
#   subnet_ids         = [aws_subnet.virginia_subnet_private_1b.id]
#   transit_gateway_id = aws_ec2_transit_gateway.virginia_transit.id
#   vpc_id             = aws_vpc.virginia_vpc.id
# }

# resource "aws_ec2_transit_gateway_vpc_attachment" "private-storage-us-east-1a" {
#    #provider = aws.virginia
#   subnet_ids         = [aws_subnet.virginia_subnet_private_1a.id]
#   transit_gateway_id = aws_ec2_transit_gateway.virginia_transit.id
#   vpc_id             = aws_vpc.virginia_vpc.id
# }


# ######## HONG KONG #########################################################################


# resource "aws_ec2_transit_gateway" "hong_kong_transit" {
#   provider = aws.hong_kong

# description = "tg-web-backend-database"
#   tags = {
#     Name = "Web-Backend-Database Transit Gateway"
#   }
# }

# resource "aws_ec2_transit_gateway_vpc_attachment" "public-ap-east-1a" {
#    #provider = aws.hong_kong
#   subnet_ids         = [aws_subnet.hong_kong_subnet_public_1a.id]
#   transit_gateway_id = aws_ec2_transit_gateway.hong_kong_transit.id
#   vpc_id             = aws_vpc.hong_kong_vpc.id
# }

# /*
# resource "aws_ec2_transit_gateway_vpc_attachment" "public-ap-east-1b" {
#   subnet_ids         = [aws_subnet.public-ap-east-1b.id]
#   transit_gateway_id = aws_ec2_transit_gateway.hongkong_transit.id
#   vpc_id             = aws_vpc.hong_kong_VPC.id
# }
# */
# resource "aws_ec2_transit_gateway_vpc_attachment" "private-ap-east-1a" {
#   #provider = aws.hong_kong
#   subnet_ids         = [aws_subnet.hong_kong_subnet_private_1a.id]
#   transit_gateway_id = aws_ec2_transit_gateway.hong_kong_transit.id
#   vpc_id             = aws_vpc.hong_kong_vpc.id
# }

# resource "aws_ec2_transit_gateway_vpc_attachment" "private-ap-east-1b" {
#   #provider = aws.hong_kong
#   subnet_ids         = [aws_subnet.hong_kong_subnet_private_1b.id]
#   transit_gateway_id = aws_ec2_transit_gateway.hong_kong_transit.id
#   vpc_id             = aws_vpc.hong_kong_vpc.id
# }

# ############ AUSTRALIA ########################################

# resource "aws_ec2_transit_gateway" "australia_transit" {
#   provider = aws.australia

# description = "tg-web-backend-database"
#   tags = {
#     Name = "Web-Backend-Database Transit Gateway"
#   }
# }

# resource "aws_ec2_transit_gateway_vpc_attachment" "public-ap-southeast-2a" {
#   #provider = aws.australia
#   subnet_ids         = [aws_subnet.australia_subnet_public_1a.id]
#   transit_gateway_id = aws_ec2_transit_gateway.australia_transit.id
#   vpc_id             = aws_vpc.australia_vpc.id
# }
# /*
# resource "aws_ec2_transit_gateway_vpc_attachment" "public-ap-southeast-2-1b" {
#   subnet_ids         = [aws_subnet.public-ap-southeast-2-1b.id]
#   transit_gateway_id = aws_ec2_transit_gateway.australia_transit.id
#   vpc_id             = aws_vpc.australia_VPC.id
# }
# */

# resource "aws_ec2_transit_gateway_vpc_attachment" "private-ap-southeast-2a" {
#   #provider = aws.australia
#   subnet_ids         = [aws_subnet.australia_subnet_private_1a.id]
#   transit_gateway_id = aws_ec2_transit_gateway.australia_transit.id
#   vpc_id             = aws_vpc.australia_vpc.id
# }

# resource "aws_ec2_transit_gateway_vpc_attachment" "private-ap-southeast-2b" {
#   #provider = aws.australia
#   subnet_ids         = [aws_subnet.australia_subnet_private_1b.id]
#   transit_gateway_id = aws_ec2_transit_gateway.australia_transit.id
#   vpc_id             = aws_vpc.australia_vpc.id
# }

# ################### california #############################################################


# resource "aws_ec2_transit_gateway" "california_transit" {
#   provider = aws.california

# description = "tg-web-backend-database"
#   tags = {
#     Name = "Web-Backend-Database Transit Gateway"
#   }
# }

# resource "aws_ec2_transit_gateway_vpc_attachment" "public-us-west-2a" {
#   #provider = aws.california
#   subnet_ids         = [aws_subnet.california_subnet_public_1a.id]
#   transit_gateway_id = aws_ec2_transit_gateway.california_transit.id
#   vpc_id             = aws_vpc.california_vpc.id
# }

# resource "aws_ec2_transit_gateway_vpc_attachment" "private-us-west-2-1a" {
#   #provider = aws.california
#   subnet_ids         = [aws_subnet.california_subnet_private_1a.id]
#   transit_gateway_id = aws_ec2_transit_gateway.california_transit.id
#   vpc_id             = aws_vpc.california_vpc.id
# }

# resource "aws_ec2_transit_gateway_vpc_attachment" "private-us-west-2-1b" {
#   #provider = aws.california
#   subnet_ids         = [aws_subnet.california_subnet_private_1c.id]
#   transit_gateway_id = aws_ec2_transit_gateway.california_transit.id
#   vpc_id             = aws_vpc.california_vpc.id
# }

# ##################### london ################################################################

resource "aws_ec2_transit_gateway" "london_transit" {
  provider = aws.london

description = "tg-web-backend-database"
  tags = {
    Name = "Web-Backend-Database Transit Gateway"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "public-eu-west-2a" {
  provider = aws.london
  subnet_ids         = [aws_subnet.london_subnet_public_1a.id, aws_subnet.london_subnet_public_1b.id]
  transit_gateway_id = aws_ec2_transit_gateway.london_transit.id
  vpc_id             = aws_vpc.london_vpc.id
}

# resource "aws_ec2_transit_gateway_vpc_attachment" "private-eu-west-2a" {
#   #provider = aws.london
#   subnet_ids         = [aws_subnet.london_subnet_private_1a.id]
#   transit_gateway_id = aws_ec2_transit_gateway.london_transit.id
#   vpc_id             = aws_vpc.london_vpc.id
# }

# resource "aws_ec2_transit_gateway_vpc_attachment" "private-eu-west-2-1b" {
#   #provider = aws.london
#   subnet_ids         = [aws_subnet.london_subnet_private_1b.id]
#   transit_gateway_id = aws_ec2_transit_gateway.london_transit.id
#   vpc_id             = aws_vpc.london_vpc.id
# }

# ##################### SAO PAULO #################################################

# resource "aws_ec2_transit_gateway" "saopaulo_transit" {
#   provider = aws.sao_paulo

# description = "tg-web-backend-database"
#   tags = {
#     Name = "Web-Backend-Database Transit Gateway"
#   }
# }

# resource "aws_ec2_transit_gateway_vpc_attachment" "public-sa-east-1a" {
#   #provider = aws.sao_paulo
#   subnet_ids         = [aws_subnet.sao_paulo_subnet_public_1a.id]
#   transit_gateway_id = aws_ec2_transit_gateway.saopaulo_transit.id
#   vpc_id             = aws_vpc.sao_paulo_vpc.id
# }


# resource "aws_ec2_transit_gateway_vpc_attachment" "private-sa-east-1a" {
#   #provider = aws.sao_paulo
#   subnet_ids         = [aws_subnet.sao_paulo_subnet_private_1a.id]
#   transit_gateway_id = aws_ec2_transit_gateway.saopaulo_transit.id
#   vpc_id             = aws_vpc.sao_paulo_vpc.id
# }

# resource "aws_ec2_transit_gateway_vpc_attachment" "public-sa-east-1b" {
#   #provider = aws.sao_paulo
#   subnet_ids         = [aws_subnet.sao_paulo_subnet_private_1c.id]
#   transit_gateway_id = aws_ec2_transit_gateway.saopaulo_transit.id
#   vpc_id             = aws_vpc.sao_paulo_vpc.id
# }
