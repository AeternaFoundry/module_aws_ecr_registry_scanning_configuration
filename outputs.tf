output "ecr_registry_scanning_configurations_id" {
  description = "Map of id values across all ecr_registry_scanning_configurations, keyed the same as var.ecr_registry_scanning_configurations"
  value       = { for k, v in aws_ecr_registry_scanning_configuration.ecr_registry_scanning_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ecr_registry_scanning_configurations_region" {
  description = "Map of region values across all ecr_registry_scanning_configurations, keyed the same as var.ecr_registry_scanning_configurations"
  value       = { for k, v in aws_ecr_registry_scanning_configuration.ecr_registry_scanning_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ecr_registry_scanning_configurations_registry_id" {
  description = "Map of registry_id values across all ecr_registry_scanning_configurations, keyed the same as var.ecr_registry_scanning_configurations"
  value       = { for k, v in aws_ecr_registry_scanning_configuration.ecr_registry_scanning_configurations : k => v.registry_id if v.registry_id != null && length(v.registry_id) > 0 }
}
output "ecr_registry_scanning_configurations_rule" {
  description = "Map of rule values across all ecr_registry_scanning_configurations, keyed the same as var.ecr_registry_scanning_configurations"
  value       = { for k, v in aws_ecr_registry_scanning_configuration.ecr_registry_scanning_configurations : k => v.rule if v.rule != null && length(v.rule) > 0 }
}
output "ecr_registry_scanning_configurations_scan_type" {
  description = "Map of scan_type values across all ecr_registry_scanning_configurations, keyed the same as var.ecr_registry_scanning_configurations"
  value       = { for k, v in aws_ecr_registry_scanning_configuration.ecr_registry_scanning_configurations : k => v.scan_type if v.scan_type != null && length(v.scan_type) > 0 }
}

