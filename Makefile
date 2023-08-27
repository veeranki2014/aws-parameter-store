default:
	@rm -rf .terrafrom
	@git pull
	@terraform init
	@terraform apply -auto-approve