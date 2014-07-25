#!/usr/bin/env ruby

# Run `vagrant up` (even on Windows) to get a React + Less environment.

Vagrant.configure("2") do |config|
	# 32-bit Ubuntu.
	config.vm.box = "ubuntu/trusty32"

	# 64-bit Ubuntu default image on Vagrant Cloud is broken. Using the official one from Canonical.
	# config.vm.box = "ubuntu-trusty-64-current"
	# config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

	config.vm.network :forwarded_port, guest: 3333, host: 3333 # Brunch HTTP server
	config.vm.network :forwarded_port, guest: 9485, host: 9485 # WebSocket for auto-reload
	config.vm.hostname = "vagrant.local"

	config.vm.provision :puppet do |puppet|
		puppet.manifests_path = "script"
	end
end
