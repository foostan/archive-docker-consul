# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

NUM_OF_INSTANCES = 2

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "yungsang/coreos"

  (1..NUM_OF_INSTANCES).each do |i|
    node_name = "docker-host#{i}"

    config.vm.define vm_name = node_name do |server|
      ip = "192.168.33.#{i+10}"
      server.vm.hostname = node_name
      server.vm.network :private_network, ip: ip
      server.vm.synced_folder "./share", "/home/core/share", id: "core", :nfs => true,  :mount_options => ['nolock,vers=3,udp']
      server.vm.provision "shell" do |s|
        s.inline = <<-EOF
          if [ ! -e /home/core/share/consul/bin/consul ]; then
            wget https://dl.bintray.com/mitchellh/consul/0.4.0_linux_amd64.zip
            unzip 0.4.0_linux_amd64.zip && rm 0.4.0_linux_amd64.zip
            mv consul /home/core/share/consul/bin/consul
            export PATH=$PATH:/home/core/share/consul/bin
          fi
        EOF
      end
      server.vm.provision "docker" do |d|
        d.pull_images "foostan/consul"
      end
    end
  end
end
