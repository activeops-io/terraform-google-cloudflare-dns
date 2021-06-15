/*
 * Copyright ActiveOps 2021
 * For license information consult LICENSE
 * All rights reserved
 * Contact: mark@activeops.io / eric@activeops.io
*/

variable "project_name" {
  type        = string
  description = "Project name in GCP"
  default     = ""
}

variable "region" {
  type        = string
  description = "Region to deploy in"
  default     = ""
}

variable "cf_email" {
  description = "Cloudflare Email (User account)"
  type        = string
  sensitive   = true
}

variable "cf_api_key" {
  description = "Cloudflare API Key"
  type        = string
  sensitive   = true
}

variable "records" {
  type = map(object({
    zone_id      = string
    record_value = string
    record_type  = string
    record_ttl   = number
    proxied      = bool
  }))
  description = "Map for DNS records"
  default = {
    "test.activeops.io" = {
      zone_id      = "32aeeckkd"
      record_value = "172.12.11.11"
      record_type  = "A"
      record_ttl   = 1
      proxied      = true
    }
  }
}