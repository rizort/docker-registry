#.ONESHELL:

init:
	cd provisioning; cp hosts.yml.dist hosts.yml; cp group_vars/all.yml.dist group_vars/all.yml 

deploy:
	cd provisioning; ansible-playbook deploy.yml -i hosts.yml

deploy-verbose:
	cd provisioning; ansible-playbook deploy.yml -i hosts.yml -vvv

upgrade:
	cd provisioning; ansible-playbook upgrade.yml -i hosts.yml
