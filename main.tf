resource "oci_core_volume_group" "core_volume_groups" {
  for_each = var.core_volume_groups

  availability_domain            = each.value.availability_domain
  compartment_id                 = each.value.compartment_id
  backup_policy_id               = each.value.backup_policy_id
  cluster_placement_group_id     = each.value.cluster_placement_group_id
  defined_tags                   = each.value.defined_tags
  display_name                   = each.value.display_name
  freeform_tags                  = each.value.freeform_tags
  preserve_volume_replica        = each.value.preserve_volume_replica
  volume_group_replicas_deletion = each.value.volume_group_replicas_deletion
  volume_ids                     = each.value.volume_ids
  xrc_kms_key_id                 = each.value.xrc_kms_key_id

  source_details {
    type                    = each.value.source_details.type
    volume_group_backup_id  = each.value.source_details.volume_group_backup_id
    volume_group_id         = each.value.source_details.volume_group_id
    volume_group_replica_id = each.value.source_details.volume_group_replica_id
    volume_ids              = each.value.source_details.volume_ids
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "volume_group_replicas" {
    for_each = each.value.volume_group_replicas != null ? each.value.volume_group_replicas : []
    content {
      availability_domain = volume_group_replicas.value.availability_domain
      display_name        = volume_group_replicas.value.display_name
      xrr_kms_key_id      = volume_group_replicas.value.xrr_kms_key_id
    }
  }
}

