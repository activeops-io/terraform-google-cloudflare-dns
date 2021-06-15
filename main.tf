/*
 * Copyright ActiveOps 2021
 * For license information consult LICENSE
 * All rights reserved
 * Contact: mark@activeops.io / eric@activeops.io
*/

resource "cloudflare_record" "lb_http_dns" {
  for_each = var.records

  zone_id = each.value["zone_id"]
  name    = each.key
  value   = each.value["record_value"]
  type    = each.value["record_type"]
  ttl     = each.value["record_ttl"] != null ? 1 : 0
  proxied = each.value["proxied"]
}
