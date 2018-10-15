provider "digitalocean" {
  token       = "${var.do_api_key}"
}

provider "google" {
  project         = "${var.project}"
  region          = "${var.region}"
}
