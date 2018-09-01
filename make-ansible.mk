FILE = "ansible/group_vars/all/vault.yml"

ansible-vaults-encrypt:
	ansible-vault encrypt $(FILE)

ansible-vaults-decrypt:
	ansible-vault decrypt $(FILE)

ansible-vaults-edit:
	ansible-vault edit $(FILE)