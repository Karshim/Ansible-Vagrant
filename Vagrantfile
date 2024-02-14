Vagrant.configure("2") do |config|

  config.vm.box = "generic/fedora33"

 config.vm.provider "virtualbox" do |vb|
   vb.gui = false
   vb.memory = "4096"
   vb.cpus = 4
   vb.name = 'app-test'
 end
 config.vm.network "forwarded_port", guest: 5000, host: 5000
 config.vm.synced_folder "python-sample-app/", "/vagrant"
 config.vm.provision "ansible" do |ansible|
   ansible.playbook = "playbook.yml"

  end

end
