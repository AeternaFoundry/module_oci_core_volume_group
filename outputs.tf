output "core_volume_groups_id" {
  description = "Map of id values across all core_volume_groups, keyed the same as var.core_volume_groups except keys with no id are omitted"
  value       = { for k, v in oci_core_volume_group.core_volume_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_volume_groups_availability_domain" {
  description = "Map of availability_domain values across all core_volume_groups, keyed the same as var.core_volume_groups except keys with no availability_domain are omitted"
  value       = { for k, v in oci_core_volume_group.core_volume_groups : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "core_volume_groups_backup_policy_id" {
  description = "Map of backup_policy_id values across all core_volume_groups, keyed the same as var.core_volume_groups except keys with no backup_policy_id are omitted"
  value       = { for k, v in oci_core_volume_group.core_volume_groups : k => v.backup_policy_id if v.backup_policy_id != null && length(v.backup_policy_id) > 0 }
}
output "core_volume_groups_cluster_placement_group_id" {
  description = "Map of cluster_placement_group_id values across all core_volume_groups, keyed the same as var.core_volume_groups except keys with no cluster_placement_group_id are omitted"
  value       = { for k, v in oci_core_volume_group.core_volume_groups : k => v.cluster_placement_group_id if v.cluster_placement_group_id != null && length(v.cluster_placement_group_id) > 0 }
}
output "core_volume_groups_compartment_id" {
  description = "Map of compartment_id values across all core_volume_groups, keyed the same as var.core_volume_groups except keys with no compartment_id are omitted"
  value       = { for k, v in oci_core_volume_group.core_volume_groups : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_volume_groups_defined_tags" {
  description = "Map of defined_tags values across all core_volume_groups, keyed the same as var.core_volume_groups except keys with no defined_tags are omitted"
  value       = { for k, v in oci_core_volume_group.core_volume_groups : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "core_volume_groups_display_name" {
  description = "Map of display_name values across all core_volume_groups, keyed the same as var.core_volume_groups except keys with no display_name are omitted"
  value       = { for k, v in oci_core_volume_group.core_volume_groups : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_volume_groups_freeform_tags" {
  description = "Map of freeform_tags values across all core_volume_groups, keyed the same as var.core_volume_groups except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_core_volume_group.core_volume_groups : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "core_volume_groups_is_hydrated" {
  description = "Map of is_hydrated values across all core_volume_groups, keyed the same as var.core_volume_groups except keys with no is_hydrated are omitted"
  value       = { for k, v in oci_core_volume_group.core_volume_groups : k => v.is_hydrated if v.is_hydrated != null }
}
output "core_volume_groups_preserve_volume_replica" {
  description = "Map of preserve_volume_replica values across all core_volume_groups, keyed the same as var.core_volume_groups except keys with no preserve_volume_replica are omitted"
  value       = { for k, v in oci_core_volume_group.core_volume_groups : k => v.preserve_volume_replica if v.preserve_volume_replica != null }
}
output "core_volume_groups_size_in_gbs" {
  description = "Map of size_in_gbs values across all core_volume_groups, keyed the same as var.core_volume_groups except keys with no size_in_gbs are omitted"
  value       = { for k, v in oci_core_volume_group.core_volume_groups : k => v.size_in_gbs if v.size_in_gbs != null && length(v.size_in_gbs) > 0 }
}
output "core_volume_groups_size_in_mbs" {
  description = "Map of size_in_mbs values across all core_volume_groups, keyed the same as var.core_volume_groups except keys with no size_in_mbs are omitted"
  value       = { for k, v in oci_core_volume_group.core_volume_groups : k => v.size_in_mbs if v.size_in_mbs != null && length(v.size_in_mbs) > 0 }
}
output "core_volume_groups_source_details" {
  description = "Map of source_details values across all core_volume_groups, keyed the same as var.core_volume_groups except keys with no source_details are omitted"
  value       = { for k, v in oci_core_volume_group.core_volume_groups : k => one(v.source_details) if v.source_details != null && length(v.source_details) > 0 }
}
output "core_volume_groups_state" {
  description = "Map of state values across all core_volume_groups, keyed the same as var.core_volume_groups except keys with no state are omitted"
  value       = { for k, v in oci_core_volume_group.core_volume_groups : k => v.state if v.state != null && length(v.state) > 0 }
}
output "core_volume_groups_time_created" {
  description = "Map of time_created values across all core_volume_groups, keyed the same as var.core_volume_groups except keys with no time_created are omitted"
  value       = { for k, v in oci_core_volume_group.core_volume_groups : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "core_volume_groups_volume_group_replicas" {
  description = "Map of volume_group_replicas values across all core_volume_groups, keyed the same as var.core_volume_groups except keys with no volume_group_replicas are omitted"
  value       = { for k, v in oci_core_volume_group.core_volume_groups : k => v.volume_group_replicas if v.volume_group_replicas != null && length(v.volume_group_replicas) > 0 }
}
output "core_volume_groups_volume_group_replicas_deletion" {
  description = "Map of volume_group_replicas_deletion values across all core_volume_groups, keyed the same as var.core_volume_groups except keys with no volume_group_replicas_deletion are omitted"
  value       = { for k, v in oci_core_volume_group.core_volume_groups : k => v.volume_group_replicas_deletion if v.volume_group_replicas_deletion != null }
}
output "core_volume_groups_volume_ids" {
  description = "Map of volume_ids values across all core_volume_groups, keyed the same as var.core_volume_groups except keys with no volume_ids are omitted"
  value       = { for k, v in oci_core_volume_group.core_volume_groups : k => v.volume_ids if v.volume_ids != null && length(v.volume_ids) > 0 }
}
output "core_volume_groups_xrc_kms_key_id" {
  description = "Map of xrc_kms_key_id values across all core_volume_groups, keyed the same as var.core_volume_groups except keys with no xrc_kms_key_id are omitted"
  value       = { for k, v in oci_core_volume_group.core_volume_groups : k => v.xrc_kms_key_id if v.xrc_kms_key_id != null && length(v.xrc_kms_key_id) > 0 }
}

