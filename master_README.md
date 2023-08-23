# DigitalOcean Available Terraform Variables
[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/sergeykuzmich/terraform-digitalocean-variables/daily.yml?branch=master)](https://github.com/sergeykuzmich/terraform-digitalocean-variables/actions?query=workflow%3A%22Daily+Check-in%22)
[![Last Updated](https://img.shields.io/github/last-commit/sergeykuzmich/terraform-digitalocean-variables/master.svg?label=last%20updated)](https://github.com/sergeykuzmich/terraform-digitalocean-variables/commits/master)

This is a self-updating repository with a list of all available DigitalOcean Variables for terraform scripts.
 
## Usage

```
resource "digitalocean_droplet" "droplet" {
  image  = var.do_application_wordpress-16-04
  region = var.do_region_nyc1
  size   = var.do_size_s-1vcpu-1gb

  name   = "droplet"
}
```

> Variables prevents infrastructure deploying with undefined or misspelled 'image', 'distribution', 'size' or 'region'.
