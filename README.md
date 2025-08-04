# Terraform EC2 Instance Deployment

This project uses Terraform to create and manage an AWS EC2 instance with customizable storage.

## Prerequisites
- AWS CLI configured with proper credentials
- Terraform installed
- An existing AWS key pair for SSH access
- A security group ID for the instance

## How to Use
1. Clone this repository.
2. Update `main.tf` with your desired AWS region, AMI ID, instance type, key pair, and security group.
3. Run `terraform init` to initialize the working directory.
4. Run `terraform plan` to preview the changes.
5. Run `terraform apply` to create the EC2 instance.
6. To update storage, modify the `volume_size` in `main.tf` and run `terraform apply` again.

## Customization
You can adjust the instance type, AMI, key pair, security group, and storage size in `main.tf` as needed.

## Notes
- Storage changes may not always apply automatically; sometimes manual AWS CLI commands are required.
- Always review the Terraform plan before applying changes.
- Ensure your AWS credentials have proper permissions.
