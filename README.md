# EC2 Provision Using Terraform

This repository contains Terraform and Ansible code to provision and configure AWS EC2 instances.  
It is designed as a simple Infrastructure-as-Code (IaC) example for automating cloud resource creation.

---

## 📂 Project Structure
- **Terraform/**  
  Contains `.tf` files to define AWS infrastructure resources such as:
  - VPC, subnets, and security groups
  - EC2 instance definitions
  - Key pairs and IAM roles

- **Ansible/**  
  Contains playbooks for post-provisioning configuration of EC2 instances, such as:
  - Installing required packages
  - Configuring services
  - Applying security hardening

- **.gitignore**  
  Standard ignore rules for Terraform state files, Ansible artifacts, and other local files.

---

## 🚀 Prerequisites
- AWS account with programmatic access (Access Key & Secret Key)
- Terraform installed (v1.x recommended)
- Ansible installed (v2.9+ recommended)
- SSH key pair configured for EC2 access

---

## ⚙️ Usage
1. **Clone the repository**
   ```bash
   git clone https://github.com/hemanthmaripi/EC2_PROVISION_USING_TERRAFORM.git
   cd EC2_PROVISION_USING_TERRAFORM/Terraform
