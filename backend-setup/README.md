In real world scenario, the DevOps team manages AWS resources using Terraform. They need to ensure that only one team member can apply changes to the infrastructure at a time to prevent potential conflicts.
In this scenario, the team sets up a DynamoDB table specifically for state locking. Each Terraform run checks for a lock in DynamoDB before proceeding. If the lock is acquired, the Terraform run proceeds; otherwise, it waits for the lock to be released.
This implementation guarantees that even in a fast-paced and collaborative environment, changes are applied safely without conflicts.

## Why DynamoDB for State Locking?
DynamoDB is an excellent choice for state locking in Terraform due to its high availability, scalability, and low-latency performance. It offers fine-grained control over access, which is crucial for preventing simultaneous writes to the state. Additionally, DynamoDB integrates seamlessly with AWS services, making it a natural choice for AWS-centric infrastructure.

## Resource: aws_s3_bucket
Will be used to create S3 bucket to store the State file. 


Resource: aws_s3_bucket_versioning
Provides a resource for controlling versioning on an S3 bucket. Deleting this resource will either suspend versioning on the associated S3 bucket or simply remove the resource from Terraform state if the associated S3 bucket is unversioned.

