
Vagrant.configure(2) do |config|

  config.vm.define "tftpd" do |tftpd|
      tftpd.vm.box = "ubuntu/trusty64"
      tftpd.vm.hostname = "tfptserver"
      tftpd.vm.network "private_network", ip: "192.168.33.2",virtualbox__intnet: "pxe"
      tftpd.vm.provision "shell",path:"bootstrap_tfptd.sh"
  end

  config.vm.define "router" do |router|
      router.vm.box = "ubuntu/trusty64"
      router.vm.network "private_network", ip: "192.168.33.3",virtualbox__intnet: "pxe"
      router.vm.provision "shell",path:"bootstrap_router.sh"
  end

  config.vm.define "client" do |client|
      client.vm.box = "ubuntu/trusty64"
      client.vm.network "private_network", :adapter=>1, type: "dhcp",virtualbox__intnet: "pxe"



      client.vm.provider "virtualbox" do |vb, override|
        vb.customize ["modifyvm", :id, "--boot1","net"]
        vb.gui = true
  end


  end


end
