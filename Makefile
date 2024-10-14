help:                                                                                                                         
	@awk 'BEGIN {FS = ":.*?## "} /^[\/a-zA-Z_-]+:.*?## / {sub("\\\\n",sprintf("\n%22c"," "), $$2);printf "\033[36m \033[0m%-16s %s\n", $$1, $$2}' Makefile

check-var = $(if $(strip $($1)),,$(error var for "$1" is empty))                                                              
                                                                                                                              
ansible/role: ## ansible run role role=rolename
	$(call check-var,role)
	@ansible-playbook --ask-become-pass -i hosts site.yml -c local --tags "$(role)"

ansible/check: ## run ansible in check mode (dry run)
	@ansible-playbook --ask-become-pass --check -i hosts site.yml -c local

ansible/testvars: ## run ansible against test_vars.yaml, prints out os related variables 
	@ansible-playbook -i hosts test_vars.yml
