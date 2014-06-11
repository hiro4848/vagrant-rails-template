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
1. git clone https://github.com/hiro4848/vagrant-rails-template.git
2. change the project name
3. modify ansible/playbook.xml if necessary (e.g. change ruby version)
3. vagrant up
4. /vagrant is the directory synced with the project directory
5. run 'gem install bundler', then 'bundle install'






