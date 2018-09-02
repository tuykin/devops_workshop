U := root
VPF := tmp/ansible-vault-password

production-setup:
	ansible-playbook ansible/site.yml -i ansible/production -u $U -vv --vault-password-file=$(VPF)

production-deploy:
	ansible-playbook ansible/deploy.yml -i ansible/production -u $U -vv --ask-vault-pass