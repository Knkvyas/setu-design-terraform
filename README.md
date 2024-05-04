# aws_design_setu
This repository aims to utilize Terraform for designing AWS infrastructure according to the provided use-case.
<<<<<<< HEAD



# Backend.tf
Warning! It is highly recommended that you enable Bucket Versioning on the S3 bucket to allow for state recovery in the case of accidental deletions and human error.
IAM Role must have S3
Terraform will need the following AWS IAM permissions on the target backend bucket:

s3:ListBucket on arn:aws:s3:::mybucket. At a minimum, this must be able to list the path where the state is stored.
s3:GetObject on arn:aws:s3:::mybucket/path/to/my/key
s3:PutObject on arn:aws:s3:::mybucket/path/to/my/key

If you are using state locking, Terraform will need the following AWS IAM permissions on the DynamoDB table (arn:aws:dynamodb:::table/mytable):

dynamodb:DescribeTable
dynamodb:GetItem
dynamodb:PutItem
dynamodb:DeleteItem

Note - A backend block cannot refer to named values (like input variables, locals, or data source attributes).
=======
>>>>>>> fb3eed4a382e26e6a956cabdd1e184c6a2f2494d
