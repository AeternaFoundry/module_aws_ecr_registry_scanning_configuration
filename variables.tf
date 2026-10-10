variable "ecr_registry_scanning_configurations" {
  description = <<EOT
Map of ecr_registry_scanning_configurations, attributes below
Required:
    - scan_type
Optional:
    - region
    - rule (block):
        - repository_filter (required, block):
            - filter (required)
            - filter_type (required)
        - scan_frequency (required)
EOT

  type = map(object({
    scan_type = string
    region    = optional(string)
    rule = optional(list(object({
      repository_filter = list(object({
        filter      = string
        filter_type = string
      }))
      scan_frequency = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ecr_registry_scanning_configurations : (
        v.rule == null || (length(v.rule) <= 100)
      )
    ])
    error_message = "Each rule list must contain at most 100 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ecr_registry_scanning_configurations : (
        v.rule == null || alltrue([for item in v.rule : (length(item.repository_filter) >= 1)])
      )
    ])
    error_message = "Each repository_filter list must contain at least 1 items"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

