.PHONY: init plan apply destroy
ENV=core
init:
	terraform init
	terraform workspace select -or-create ${ENV}

plan: init
	terraform plan -var-file=workspace-vars/${ENV}.tfvars

apply: init
	terraform apply -var-file=workspace-vars/${ENV}.tfvars 

destroy: init
	terraform destroy -var-file=workspace-vars/${ENV}.tfvars