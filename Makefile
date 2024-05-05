all: run
run:
	vagrant up
clean:
	@- vagrant destroy -f
prov:
	vagrant provision

cicle: clean run

ssh:
	ssh-keygen -f "/home/nacao/.ssh/known_hosts" -R "vk8s"
	ssh -o StrictHostKeyChecking=no k8sadm@vk8s

#


