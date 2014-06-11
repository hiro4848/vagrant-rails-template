Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu14.04"

  config.vm.network :private_network, ip: "192.168.20.100"
  config.vm.provision "shell", :path => "bootstrap.sh"
  config.vm.synced_folder ".", "/vagrant", :mount_options => ['dmode=775', 'fmode=664']
end
