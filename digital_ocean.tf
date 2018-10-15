resource "digitalocean_ssh_key" "example" {
  name = "example"
  public_key = "${file("~/.ssh/terraform_example.pub")}"
}

resource "digitalocean_droplet" "example" {
    image = "centos-7-x64"
    name = "example"
    region = "sgp1"
    size = "s-1vcpu-1gb"
    ssh_keys = ["${digitalocean_ssh_key.example.fingerprint}"]
    depends_on = ["digitalocean_ssh_key.example"]
}
