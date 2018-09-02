provider "digitalocean" {
  token = "bcbd40280294f7d3267f0fea2df322490aed4c0c66d330539899df32085d4a05"
}

// resource "digitalocean_droplet" "web" {
//   image  = "ubuntu-16-04-x64"
//   name   = "web"
//   region = "BLR1"
//   size   = "s-1vcpu-1gb"
// }