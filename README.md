# Eschool-task

## Overview

This repository contains infrastructure and configuration code required to deploy the eSchool web application on AWS.

The deployment includes:

- AWS infrastructure provisioning via Terraform
- EC2 application and database servers
- MySQL database configuration
- Automated application startup via Ansible
- Secure environment variable handling

## Architecture

The infrastructure deploys:
App EC2 instance

- Ubuntu server
- Java + Maven + Git
- eSchool app
  DB EC2 instance
- MySQL server
- Database and user

## terraform-iac

Infrastructure provisioning:

- VPC and subnet
- Security groups
- EC2 instances
- SSH key pair
- S3 backend for Terraform state
  There is also a Makefile that selects the specified workspace and file with variables.

### Requirements

- Terraform v1.13.3.
- AWS CLI configured.
- Git and Make.

### Installation and Setup

1. **Install AWS CLI:**
   Download and install the AWS CLI. Then configure your credentials:

```bash
aws configure --profile [name]
```

Enter your AWS Access Key ID, Secret Access Key, default region (e.g., us-east-1), and output format (e.g., json).
Pass the profile variable to the provider variable

2. **Run with Makefile:**

```bash
make init # Init
make plan # Generates plan for current workspace.
make apply # Deploys changes
make destroy # Destroy all resources
```

## ansible

Application configuration:

- systemd service creation
- environment variables setup
- automatic application startup after reboot

### Requirements

- Ansible 2.14+ (can be installed on Linux, inside Docker, or on a remote EC2 instance)

### Installation and Setup

1. **Create an inventory.ini file with the configuration of the specified host:**

```bash
[app]
eschool ansible_host=[ip] ansible_user=ubuntu ansible_ssh_private_key_file="path/to/key"
```

2. **Run:**

```bash
ansible-playbook -i inventory.ini playbook-deploy.yaml
```

## scripts

Helper scripts for setup and config all software
