VPF = "ansible/production/group_vars/all/vault.yml"

ansible-vaults-encrypt:
	ansible-vault encrypt $(VPF)

ansible-vaults-decrypt:
	ansible-vault decrypt $(VPF)

ansible-vaults-edit:
	ansible-vault edit $(VPF)

ansible-deps-install:
	ansible-galaxy install -r requirements.yml