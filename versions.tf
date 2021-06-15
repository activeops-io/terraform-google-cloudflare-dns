/*
 * Copyright ActiveOps 2021
 * For license information consult LICENSE
 * All rights reserved
 * Contact: mark@activeops.io / eric@activeops.io
*/

terraform {
  required_version = ">= 0.15.0"
  required_providers {
    google = {
      source = "hashicorp/google"
    }
    google-beta = {
      source = "hashicorp/google-beta"
    }
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 2.0"
    }
  }
}

provider "google" {
  project = var.project_name
  region  = var.region
}

provider "google-beta" {
  project = var.project_name
  region  = var.region
}


provider "cloudflare" {
  email   = var.cf_email
  api_key = var.cf_api_key
}
