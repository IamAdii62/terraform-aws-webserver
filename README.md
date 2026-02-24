# Terraform Deployed Web Server on AWS

Provisioned using Infrastructure as Code (IaC) with Terraform.

---

## Project Overview

This project provisions an AWS EC2 instance using Terraform and automatically installs & runs Nginx using User Data.

The infrastructure includes:

- AWS Provider Configuration  
- EC2 Instance  
- Security Group (HTTP + SSH)  
- User Data Automation  
- Output for Public IP  

---

## Technologies Used

- Terraform  
- AWS (EC2, Security Groups)  
- Nginx  
- Linux (Ubuntu)  
- Infrastructure as Code (IaC)  

---

## Project Structure

terraform-ec2-automation/
│
├── provider.tf # AWS provider configuration
├── variables.tf # Input variables
├── main.tf # EC2 + Security Group configuration
├── outputs.tf # Output values (Public IP)
├── README.md # Project documentation


---

## What This Project Does

Creates a Security Group allowing:
- Port 22 (SSH)
- Port 80 (HTTP)

Launches an EC2 instance

Installs Nginx automatically using User Data script

Deploys a custom web page:

Terraform Deployed Web Server
Provisioned using Infrastructure as Code on AWS

EC2 | Security Groups | Nginx | User Data Automation
Built by Aditi 

Powered by Terraform • AWS • DevOps


Displays Public IP after deployment

---

## Deployment Steps

### Step 1: Initialize Terraform

terraform init

### Step 2: Validate Configuration

terraform validate


### Step 3: Preview Infrastructure Plan

terraform plan

### Step 4: Deploy Infrastructure

terraform apply

Type `yes` when prompted.

---

## Access the Web Server

After successful deployment:

http://<Public-IP>


You will see the Nginx web page deployed via Terraform.

---

## To Destroy Infrastructure

terraform destroy


---

## Key Concepts Demonstrated

- Infrastructure as Code (IaC)
- Terraform Providers
- Resource Blocks
- Variables
- Outputs
- User Data Automation
- AWS EC2 provisioning

---

## Author

**Aditi**

DevOps Enthusiast   
Learning Terraform & AWS

---









