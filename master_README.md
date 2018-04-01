# DigitalOcean Available Terraform Variables
[![Build Status](https://travis-ci.org/sergeykuzmich/terraform-digitalocean-variables.svg?branch=master)](https://travis-ci.org/sergeykuzmich/terraform-digitalocean-variables)

This is a self-updating repository with a list of all available DigitalOcean Variables for terraform scripts.
 
## Usage

```
resource "digitalocean_droplet" "droplet" {
  image  = "${do_application_wordpress-16-04}"
  region = "${do_region_nyc1}"
  size   = "${do_size_s-1vcpu-1gb}"

  name   = "droplet"
}
```

> Variables prevents infrastructure deploying with undefined or misspelled 'image', 'distribution', 'size' or 'region'.
