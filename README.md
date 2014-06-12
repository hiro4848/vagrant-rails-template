vagrant-rails-template
======================

vagrant template for a rails app 


This is a vagrant template for a Rails app.

The new rails app should be created in the root directory.

When a user runs 'vagrant up', the following actions occur:
1. ubuntu14.04 image is initiated 
2. bootstrap.sh is executed.
3. bootstrap.sh installs ansible on the VM, then runs ansible playbook under /vagrant/ansible/playbook.xml
   This is needed in order to support Windows
4. ansible playbook installs necessary software using apt-get
5. ansible sets up Ruby1.9.3 using rbenv. 
   Change ruby_version in playbook.xml to support different ruby version


How to create a new rails (or Ruby) project
1. move to 'RubymineProjects' directory
2. git clone https://github.com/hiro4848/vagrant-rails-template.git project_name

3. modify Vagrantfile
  - change the IP address in config.vm.network
4. modify ansible/playbook.xml if necessary (e.g. change ruby version)
5. vagrant up
6. /vagrant is the directory synced with the project directory
7. Open the project directory in Rubymine
8. File -> Settings -> Ruby SDK and Gems
   - add remote ruby sdk by choosing 'new remote'
   - Fill from vagrant config
   - Change to Ruby interpreter path to the rbenv based ruby interpreter
   - Note this can't be a symlink. The specific Ruby must be chosen or gems wouldn't be properly recognized:
     e.g. /home/vagrant/.rbenv/versions/1.9.3-p547/bin/ruby





