# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "debian" do |debian|
    debian.vm.box = "debian/bullseye64"
    debian.ssh.insert_key = false
    debian.vm.synced_folder ".", "/vagrant", disabled: true
    debian.vm.network "private_network", ip: "192.168.56.10"
  end

  config.vm.define "redhat" do |redhat|
    redhat.vm.box = "rockylinux/8"
    redhat.ssh.insert_key = false
    redhat.vm.synced_folder ".", "/vagrant", disabled: true
    redhat.vm.network "private_network", ip: "192.168.56.11"
  end

end