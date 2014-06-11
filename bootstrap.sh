#!/usr/bin/env bash

if ! [ `which ansible` ]; then
	apt-get update -y
	apt-get install -y ansible
fi

su -c "ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/playbook.yml" vagrant
