default:
	@rm -rf .terrafrom
	@git pull
	@terrafrom init
	@terrafrom apply -auto-approve