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

<img width="1881" height="217" alt="image" src="https://github.com/user-attachments/assets/bd3156b2-a006-4e42-a526-8cc3e3c49de2" />


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
<img width="1507" height="955" alt="image" src="https://github.com/user-attachments/assets/92da3238-55d5-4e96-b9cb-37f42bf2ead2" />


### Step 2: Validate Configuration

terraform validate


### Step 3: Preview Infrastructure Plan

terraform plan
<img width="1376" height="930" alt="image" src="https://github.com/user-attachments/assets/3046b194-c377-4079-99a0-58131e4e739c" />


### Step 4: Deploy Infrastructure

terraform apply
<img width="1412" height="964" alt="image" src="https://github.com/user-attachments/assets/0b6e798b-b9ba-439f-99b4-fa2322ebcad2" />



Type `yes` when prompted.

---

## Access the Web Server

After successful deployment:
<img width="1908" height="901" alt="image" src="https://github.com/user-attachments/assets/9e88d29e-3517-4631-8c53-eae238b7381c" />


http://<Public-IP>

<img width="1918" height="1014" alt="image" src="https://github.com/user-attachments/assets/95edee38-5ac9-411b-9153-ad6a30163d9e" />


You will see the Nginx web page deployed via Terraform.

---

## To Destroy Infrastructure

terraform destroy
<img width="800" height="570" alt="image" src="https://github.com/user-attachments/assets/06990bc2-578f-4294-81e7-1727650cd7da" />


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











