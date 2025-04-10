 resource "aws_s3_bucket" "mi_bucket_localstack" {
     bucket = "mi-bucket-localstack" 
     
     tags = { 
        Environment = "localstack" 
        Terraform = "true"
        Owner = "terraform" 
        } 
    }  