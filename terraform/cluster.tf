resource "digitalocean_droplet" "controller" {
    count = 3
    image = "ubuntu-18-04-x64"
    name = "controller-${count.index}"
    region = "tor1"
    size = "1gb"
    private_networking = true
    ssh_keys = [
      "${var.ssh_fingerprint}"
    ]
    tags = ["controller"]

    connection {
        user = "root"
        type = "ssh"
        private_key = "${file(var.pvt_key)}"
        timeout = "2m"
    }

    provisioner "remote-exec" {
    inline = [
      "apt-get -y install python-minimal"
    ]
  }
}