VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Use the same key for each machine
  config.ssh.insert_key = false

  config.vm.define "vagrant1" do |vagrant1|
    vagrant1.vm.box = "ubuntu/xenial64"
    vagrant1.vm.network "forwarded_port", guest: 80, host: 8080
    vagrant1.vm.network "forwarded_port", guest: 443, host: 8443
    vagrant1.vm.provision "file", source: "E:/id_rsa.pub", destination: "~/.ssh/authorized_keys"
    vagrant1.ssh.username = "ubuntu"
    vagrant1.ssh.password = "e43b35d5be0112aeaa005902"
    vagrant1.vm.provision "shell", inline: "sudo apt-get install python -y -qq"
  end
  # config.vm.define "vagrant2" do |vagrant2|
  #   vagrant2.vm.box = "ubuntu/xenial64"
  #   vagrant2.vm.network "forwarded_port", guest: 80, host: 8081
  #   vagrant2.vm.network "forwarded_port", guest: 443, host: 8444
  #   vagrant2.vm.provision "file", source: "E:/id_rsa.pub", destination: "~/.ssh/authorized_keys"
  #   vagrant2.ssh.username = "ubuntu"
  #   vagrant2.ssh.password = "e43b35d5be0112aeaa005902"
  #   vagrant2.vm.provision "shell", inline: "sudo apt-get install python -y -qq"
  # end
end
