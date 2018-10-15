resource "digitalocean_droplet" "example" {
    image = "centos-7-x64"
    name = "example"
    region = "sgp1"
    size = "s-1vcpu-1gb"
    ssh_keys = ["${var.ssh_fingerprint_example}"]
}
