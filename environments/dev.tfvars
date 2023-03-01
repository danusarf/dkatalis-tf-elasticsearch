# dev.tfvars
env = "dev"

# EC2 Instance
instance_count = 1
ami = "ami-0dfcb1ef8550277af"
instance_type = "t3.medium"
key_name = "my-key-pair"
data_vpc_s3_bucket = "dkatalis-dhimas-poc-statefile"