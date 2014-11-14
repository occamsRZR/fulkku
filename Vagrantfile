Vagrant.configure("2") do |config|
  config.vm.define 'fulkku-dev', primary: true do |dev|
    dev.vm.box = "fulkku-14.04"
    dev.vm.box_url = "https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box"
    dev.vm.hostname = "fulkku-development"
    dev.omnibus.chef_version = :latest
    dev.vm.boot_timeout = 120
    dev.berkshelf.enabled = true 
    dev.vm.network :private_network, ip: "33.33.33.18"
    dev.vm.synced_folder './', '/home/vagrant/fulkku', type: 'nfs'
    dev.vm.provision :file, source: '~/.ssh/fulkku.pub', destination: '/home/vagrant/.ssh/fulkku.pub'
    dev.vm.provision :chef_solo do |chef|
      chef.run_list = [
        "dokku::bootstrap",
        "fulkku::default"
      ]
    end
  end
end
