variable "third_party_integrations" {
  description = <<EOT
Map of third_party_integrations, attributes below
Required:
    - project_id
    - type
Optional:
    - api_key
    - channel_name
    - enabled
    - microsoft_teams_webhook_url
    - password
    - region
    - routing_key
    - secret
    - send_collection_latency_metrics
    - send_database_metrics
    - send_query_stats_metrics
    - send_user_provided_resource_tags
    - service_discovery
    - service_key
    - team_name
    - url
    - user_name
EOT

  type = map(object({
    project_id                       = string
    type                             = string
    api_key                          = optional(string)
    channel_name                     = optional(string)
    enabled                          = optional(bool)
    microsoft_teams_webhook_url      = optional(string)
    password                         = optional(string)
    region                           = optional(string)
    routing_key                      = optional(string)
    secret                           = optional(string)
    send_collection_latency_metrics  = optional(bool)
    send_database_metrics            = optional(bool)
    send_query_stats_metrics         = optional(bool)
    send_user_provided_resource_tags = optional(bool)
    service_discovery                = optional(string)
    service_key                      = optional(string)
    team_name                        = optional(string)
    url                              = optional(string)
    user_name                        = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

