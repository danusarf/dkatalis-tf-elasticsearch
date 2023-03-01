# EC2 Instance with Elasticsearch and Secrets Manager

This Terraform code launches an Amazon EC2 instance with Elasticsearch installed via user data and authenticates to Elasticsearch with a secret stored in AWS Secrets Manager. The instance is launched in a security group that allows SSH access and Elasticsearch access on ports 22 and 9200-9300, respectively.

## Prerequisites

Before you run this Terraform code, you need to:

- Install Terraform (version 0.12 or later) on your local machine.
- Configure your AWS credentials as environment variables or in a configuration file.
- Create an S3 bucket for storing the Terraform state and configure the backend in the `main.tf` file.

## Usage

To use this Terraform code:

1. Clone the repository to your local machine.

2. Navigate to the `environments` directory and create a `.tfvars` file for your desired environment, using the `dev.tfvars` file as a template. 

3. Modify the values in the `.tfvars` file to match your environment configuration.

4. Navigate back to the root directory of the repository and initialize the Terraform working directory:

   terraform init

5. Change the workspace to the desired environment
   
   terraform workspace select dev  

5. Preview the changes to be applied:

   terraform plan -var-file=environments/dev.tfvars

6. Apply the changes:

   terraform apply -var-file=environments/dev.tfvars

7. When prompted to confirm the changes, type `yes` and press Enter.

8. If you need to modify your infrastructure, update the values in the corresponding `.tfvars` file and re-run `terraform apply`.

9. The password of elasticsearch and the TLS certificate to connect will be uploaded into AWS Secret Manager with the name `dev-es-master` and `dev-es-master-cert`

## Cleanup

To destroy the resources created by this Terraform code, run:

   terraform destroy -var-file=environments/dev.tfvars

When prompted to confirm the destruction, type `yes` and press Enter.

Note that this will permanently delete the resources, and all data stored on the EC2 instance and in the Secrets Manager secret will be lost.

## License

This Terraform code is licensed under the MIT License. See the LICENSE file for details.
