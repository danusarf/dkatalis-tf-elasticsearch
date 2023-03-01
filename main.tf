module "elasticsearch" {
    source              = "github.com/danusarf/dkatalis-tf-module//ec2_elasticsearch"
    
    instance_count      = var.instance_count
    ami                 = var.ami
    instance_type       = var.instance_type
    key_name            = var.key_name
    env                 = var.env
    data_vpc_s3_bucket  = var.data_vpc_s3_bucket
}
