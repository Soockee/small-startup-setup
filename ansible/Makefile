include .env
export $(shell sed 's/=.*//' .env)
sshConfigured:= ssh -F ssh_config -i ${SSH_PRIVATE_KEY_FILE_PATH}
ssh_private_key:= ${SSH_PRIVATE_KEY_FILE_PATH}

provisioning:
	ansible-playbook --private-key=${ssh_private_key} site.yml 

provisioning-check:
	ansible-playbook --private-key=${ssh_private_key} --check site.yml 

install:
	ansible-galaxy install -r collections/requirements.yml

## printing env vars
## format: 
## make print-<Variable Name>
print-%  : ; @echo $* = $($*)
