#####################
##  Droplet Sizes
#


variable "do_size_16gb" {
  description = "16GB RAM; 8 CPU; 160GB SSD - $160/mo"
  default     = "16gb"
}

variable "do_size_1gb" {
  description = "1GB RAM; 1 CPU; 30GB SSD - $10/mo"
  default     = "1gb"
}

variable "do_size_2gb" {
  description = "2GB RAM; 2 CPU; 40GB SSD - $20/mo"
  default     = "2gb"
}

variable "do_size_32gb" {
  description = "32GB RAM; 12 CPU; 320GB SSD - $320/mo"
  default     = "32gb"
}

variable "do_size_48gb" {
  description = "48GB RAM; 16 CPU; 480GB SSD - $480/mo"
  default     = "48gb"
}

variable "do_size_4gb" {
  description = "4GB RAM; 2 CPU; 60GB SSD - $40/mo"
  default     = "4gb"
}

variable "do_size_512mb" {
  description = "512MB RAM; 1 CPU; 20GB SSD - $5/mo"
  default     = "512mb"
}

variable "do_size_64gb" {
  description = "64GB RAM; 20 CPU; 640GB SSD - $640/mo"
  default     = "64gb"
}

variable "do_size_8gb" {
  description = "8GB RAM; 4 CPU; 80GB SSD - $80/mo"
  default     = "8gb"
}

variable "do_size_c-16" {
  description = "32GB RAM; 16 CPU; 200GB SSD - $320/mo"
  default     = "c-16"
}

variable "do_size_c-2" {
  description = "4GB RAM; 2 CPU; 25GB SSD - $40/mo"
  default     = "c-2"
}

variable "do_size_c-32" {
  description = "64GB RAM; 32 CPU; 400GB SSD - $640/mo"
  default     = "c-32"
}

variable "do_size_c-4" {
  description = "8GB RAM; 4 CPU; 50GB SSD - $80/mo"
  default     = "c-4"
}

variable "do_size_c-8" {
  description = "16GB RAM; 8 CPU; 100GB SSD - $160/mo"
  default     = "c-8"
}

variable "do_size_g-16vcpu-64gb" {
  description = "64GB RAM; 16 CPU; 200GB SSD - $480/mo"
  default     = "g-16vcpu-64gb"
}

variable "do_size_g-2vcpu-8gb" {
  description = "8GB RAM; 2 CPU; 25GB SSD - $60/mo"
  default     = "g-2vcpu-8gb"
}

variable "do_size_g-32vcpu-128gb" {
  description = "128GB RAM; 32 CPU; 400GB SSD - $960/mo"
  default     = "g-32vcpu-128gb"
}

variable "do_size_g-40vcpu-160gb" {
  description = "160GB RAM; 40 CPU; 500GB SSD - $1200/mo"
  default     = "g-40vcpu-160gb"
}

variable "do_size_g-4vcpu-16gb" {
  description = "16GB RAM; 4 CPU; 50GB SSD - $120/mo"
  default     = "g-4vcpu-16gb"
}

variable "do_size_g-8vcpu-32gb" {
  description = "32GB RAM; 8 CPU; 100GB SSD - $240/mo"
  default     = "g-8vcpu-32gb"
}

variable "do_size_gd-16vcpu-64gb" {
  description = "64GB RAM; 16 CPU; 400GB SSD - $520/mo"
  default     = "gd-16vcpu-64gb"
}

variable "do_size_gd-2vcpu-8gb" {
  description = "8GB RAM; 2 CPU; 50GB SSD - $65/mo"
  default     = "gd-2vcpu-8gb"
}

variable "do_size_gd-32vcpu-128gb" {
  description = "128GB RAM; 32 CPU; 800GB SSD - $1040/mo"
  default     = "gd-32vcpu-128gb"
}

variable "do_size_gd-40vcpu-160gb" {
  description = "160GB RAM; 40 CPU; 0.9765625TB SSD - $1300/mo"
  default     = "gd-40vcpu-160gb"
}

variable "do_size_gd-4vcpu-16gb" {
  description = "16GB RAM; 4 CPU; 100GB SSD - $130/mo"
  default     = "gd-4vcpu-16gb"
}

variable "do_size_gd-8vcpu-32gb" {
  description = "32GB RAM; 8 CPU; 200GB SSD - $260/mo"
  default     = "gd-8vcpu-32gb"
}

variable "do_size_m-128gb" {
  description = "128GB RAM; 16 CPU; 340GB SSD - $600/mo"
  default     = "m-128gb"
}

variable "do_size_m-16gb" {
  description = "16GB RAM; 2 CPU; 60GB SSD - $75/mo"
  default     = "m-16gb"
}

variable "do_size_m-16vcpu-128gb" {
  description = "128GB RAM; 16 CPU; 400GB SSD - $720/mo"
  default     = "m-16vcpu-128gb"
}

variable "do_size_m-1vcpu-8gb" {
  description = "8GB RAM; 1 CPU; 40GB SSD - $40/mo"
  default     = "m-1vcpu-8gb"
}

variable "do_size_m-224gb" {
  description = "224GB RAM; 32 CPU; 500GB SSD - $1100/mo"
  default     = "m-224gb"
}

variable "do_size_m-24vcpu-192gb" {
  description = "192GB RAM; 24 CPU; 600GB SSD - $1080/mo"
  default     = "m-24vcpu-192gb"
}

variable "do_size_m-2vcpu-16gb" {
  description = "16GB RAM; 2 CPU; 50GB SSD - $90/mo"
  default     = "m-2vcpu-16gb"
}

variable "do_size_m-32gb" {
  description = "32GB RAM; 4 CPU; 90GB SSD - $150/mo"
  default     = "m-32gb"
}

variable "do_size_m-32vcpu-256gb" {
  description = "256GB RAM; 32 CPU; 800GB SSD - $1440/mo"
  default     = "m-32vcpu-256gb"
}

variable "do_size_m-4vcpu-32gb" {
  description = "32GB RAM; 4 CPU; 100GB SSD - $180/mo"
  default     = "m-4vcpu-32gb"
}

variable "do_size_m-64gb" {
  description = "64GB RAM; 8 CPU; 200GB SSD - $300/mo"
  default     = "m-64gb"
}

variable "do_size_m-8vcpu-64gb" {
  description = "64GB RAM; 8 CPU; 200GB SSD - $360/mo"
  default     = "m-8vcpu-64gb"
}

variable "do_size_m3-16vcpu-128gb" {
  description = "128GB RAM; 16 CPU; 1.171875TB SSD - $880/mo"
  default     = "m3-16vcpu-128gb"
}

variable "do_size_m3-24vcpu-192gb" {
  description = "192GB RAM; 24 CPU; 1.7578125TB SSD - $1320/mo"
  default     = "m3-24vcpu-192gb"
}

variable "do_size_m3-2vcpu-16gb" {
  description = "16GB RAM; 2 CPU; 150GB SSD - $110/mo"
  default     = "m3-2vcpu-16gb"
}

variable "do_size_m3-32vcpu-256gb" {
  description = "256GB RAM; 32 CPU; 2.34375TB SSD - $1760/mo"
  default     = "m3-32vcpu-256gb"
}

variable "do_size_m3-4vcpu-32gb" {
  description = "32GB RAM; 4 CPU; 300GB SSD - $220/mo"
  default     = "m3-4vcpu-32gb"
}

variable "do_size_m3-8vcpu-64gb" {
  description = "64GB RAM; 8 CPU; 600GB SSD - $440/mo"
  default     = "m3-8vcpu-64gb"
}

variable "do_size_m6-16vcpu-128gb" {
  description = "128GB RAM; 16 CPU; 2.34375TB SSD - $1120/mo"
  default     = "m6-16vcpu-128gb"
}

variable "do_size_m6-24vcpu-192gb" {
  description = "192GB RAM; 24 CPU; 3.515625TB SSD - $1680/mo"
  default     = "m6-24vcpu-192gb"
}

variable "do_size_m6-2vcpu-16gb" {
  description = "16GB RAM; 2 CPU; 300GB SSD - $140/mo"
  default     = "m6-2vcpu-16gb"
}

variable "do_size_m6-32vcpu-256gb" {
  description = "256GB RAM; 32 CPU; 4.6875TB SSD - $2240/mo"
  default     = "m6-32vcpu-256gb"
}

variable "do_size_m6-4vcpu-32gb" {
  description = "32GB RAM; 4 CPU; 600GB SSD - $280/mo"
  default     = "m6-4vcpu-32gb"
}

variable "do_size_m6-8vcpu-64gb" {
  description = "64GB RAM; 8 CPU; 1.171875TB SSD - $560/mo"
  default     = "m6-8vcpu-64gb"
}

variable "do_size_s-12vcpu-48gb" {
  description = "48GB RAM; 12 CPU; 960GB SSD - $240/mo"
  default     = "s-12vcpu-48gb"
}

variable "do_size_s-16vcpu-64gb" {
  description = "64GB RAM; 16 CPU; 1.25TB SSD - $320/mo"
  default     = "s-16vcpu-64gb"
}

variable "do_size_s-1vcpu-1gb" {
  description = "1GB RAM; 1 CPU; 25GB SSD - $5/mo"
  default     = "s-1vcpu-1gb"
}

variable "do_size_s-1vcpu-2gb" {
  description = "2GB RAM; 1 CPU; 50GB SSD - $10/mo"
  default     = "s-1vcpu-2gb"
}

variable "do_size_s-1vcpu-3gb" {
  description = "3GB RAM; 1 CPU; 60GB SSD - $15/mo"
  default     = "s-1vcpu-3gb"
}

variable "do_size_s-20vcpu-96gb" {
  description = "96GB RAM; 20 CPU; 1.875TB SSD - $480/mo"
  default     = "s-20vcpu-96gb"
}

variable "do_size_s-24vcpu-128gb" {
  description = "128GB RAM; 24 CPU; 2.5TB SSD - $640/mo"
  default     = "s-24vcpu-128gb"
}

variable "do_size_s-2vcpu-2gb" {
  description = "2GB RAM; 2 CPU; 60GB SSD - $15/mo"
  default     = "s-2vcpu-2gb"
}

variable "do_size_s-2vcpu-4gb" {
  description = "4GB RAM; 2 CPU; 80GB SSD - $20/mo"
  default     = "s-2vcpu-4gb"
}

variable "do_size_s-32vcpu-192gb" {
  description = "192GB RAM; 32 CPU; 3.75TB SSD - $960/mo"
  default     = "s-32vcpu-192gb"
}

variable "do_size_s-3vcpu-1gb" {
  description = "1GB RAM; 3 CPU; 60GB SSD - $15/mo"
  default     = "s-3vcpu-1gb"
}

variable "do_size_s-4vcpu-8gb" {
  description = "8GB RAM; 4 CPU; 160GB SSD - $40/mo"
  default     = "s-4vcpu-8gb"
}

variable "do_size_s-6vcpu-16gb" {
  description = "16GB RAM; 6 CPU; 320GB SSD - $80/mo"
  default     = "s-6vcpu-16gb"
}

variable "do_size_s-8vcpu-16gb" {
  description = "16GB RAM; 8 CPU; 320GB SSD - $80/mo"
  default     = "s-8vcpu-16gb"
}

variable "do_size_s-8vcpu-32gb" {
  description = "32GB RAM; 8 CPU; 640GB SSD - $160/mo"
  default     = "s-8vcpu-32gb"
}
    