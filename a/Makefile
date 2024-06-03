
all:
	ssh-copy-id ansible@vk8s
	ansible-playbook -i hosts rvk8s.yaml --vault-password-file ~/.ssh/id_rsa
teste:
	-@ssh-keygen -f "/home/nacao/.ssh/known_hosts" -R "vk8s"
	-@ssh -o StrictHostKeyChecking=no ansible@vk8s id
	ssh-copy-id ansible@vk8s
	ansible-playbook -i hosts teste.yaml --vault-password-file ~/.ssh/id_rsa

teste:
play:
	ansible-playbook -i hosts playbook.yaml --vault-password-file ~/.ssh/id_rsa --tags: t01


