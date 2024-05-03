# -*- mode: ruby -*-
# vi: set ft=ruby :

#define(BaseHostName, Mqueue)
#define(BIP, 192.168.56.136)
#define(Bplaybook, a/playbook.yaml)
#define(BASEN, mqueue01 )
# M4 Config Vagrant test dir

#define(BASEBOX, centos/8)
#define(BASEBOX, generic/ubuntu2204)

#define(BASEBOX, generic/centos9s)




#define(`XDISK',`true')

#define(`XDISK',`true')

Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2204"
#  config.vm.box_version = "2004.01"
  config.vm.define "uminik" do |uminik|
    uminik.vm.provider "virtualbox" do |vb|
      vb.name = "uminik"
      vb.memory = 2048
      vb.cpus = 2
    end #master.vm.provider
    uminik.vm.disk :disk, size: "2GB", name: "extra_storage1"
    uminik.vm.disk :disk, size: "1GB", name: "extra_storage2"
    uminik.vm.hostname = "uminik"
    uminik.vm.network "private_network", ip: "192.168.56.136", name: "vboxnet0"
    uminik.vm.provision "ansible" do |ansible|
      ansible.playbook = "a/uminik.yaml"
      ansible.vault_password_file = "~/.ssh/id_rsa"
    end # master.vm.provision
  end  # config.vm.define "basem"

#    BASEN.vm.provision "ansible" do |ansible|
#      ansible.playbook = "mqueuePlaybook"
#    end # basem.vm.provision



end # Vagrant.configure("2")
