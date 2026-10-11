resource "mongodbatlas_third_party_integration" "third_party_integrations" {
  for_each = var.third_party_integrations

  project_id                       = each.value.project_id
  type                             = each.value.type
  api_key                          = each.value.api_key
  channel_name                     = each.value.channel_name
  enabled                          = each.value.enabled
  microsoft_teams_webhook_url      = each.value.microsoft_teams_webhook_url
  password                         = each.value.password
  region                           = each.value.region
  routing_key                      = each.value.routing_key
  secret                           = each.value.secret
  send_collection_latency_metrics  = each.value.send_collection_latency_metrics
  send_database_metrics            = each.value.send_database_metrics
  send_query_stats_metrics         = each.value.send_query_stats_metrics
  send_user_provided_resource_tags = each.value.send_user_provided_resource_tags
  service_discovery                = each.value.service_discovery
  service_key                      = each.value.service_key
  team_name                        = each.value.team_name
  url                              = each.value.url
  user_name                        = each.value.user_name
}

