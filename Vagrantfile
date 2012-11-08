# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'berkshelf/vagrant'

Vagrant::Config.run do |config|
  config.vm.box      = 'precise32'
  config.vm.box_url  = 'http://files.vagrantup.com/precise32.box'

  # config.vm.boot_mode = :gui
  # config.vm.network :hostonly, "192.168.33.10"
  # config.vm.network :bridged

  config.vm.forward_port 8787, 8787

  config.vm.provision :chef_solo do |chef|
    chef.run_list  = %w|rstudio|
    chef.log_level = :debug
  end

end
