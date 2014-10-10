# -*- mode: ruby -*-
# vi: set ft=ruby :
#
num_of_instances = 2

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  (1..num_of_instances).each do |i|
    node_name = "node-%02d" % i
    config.vm.define vm_name = node_name do |node|
      ip = "192.168.33.#{i+100}"
      node.vm.network :private_network, ip: ip
      node.vm.provision "docker" do |d|
        #d.pull_images "foostan/consul"
      end
    end
  end
end
