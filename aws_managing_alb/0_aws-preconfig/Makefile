
create-backend-resources: clean-terraform-files
	terraform -chdir=./ init
	terraform -chdir=./ apply -auto-approve

clean-terraform-files:
	rm -rf ./.terraform ./.terraform.tfstate.lock.info ./terraform.tfstate
