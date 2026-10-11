variable "core_volume_groups" {
  description = <<EOT
Map of core_volume_groups, attributes below
Required:
    - availability_domain
    - compartment_id
    - source_details (block):
        - type (required)
        - volume_group_backup_id (optional)
        - volume_group_id (optional)
        - volume_group_replica_id (optional)
        - volume_ids (optional)
Optional:
    - backup_policy_id
    - cluster_placement_group_id
    - defined_tags
    - display_name
    - freeform_tags
    - preserve_volume_replica
    - volume_group_replicas_deletion
    - volume_ids
    - xrc_kms_key_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - volume_group_replicas (block):
        - availability_domain (required)
        - display_name (optional)
        - xrr_kms_key_id (optional)
EOT

  type = map(object({
    availability_domain            = string
    compartment_id                 = string
    backup_policy_id               = optional(string)
    cluster_placement_group_id     = optional(string)
    defined_tags                   = optional(map(string))
    display_name                   = optional(string)
    freeform_tags                  = optional(map(string))
    preserve_volume_replica        = optional(bool)
    volume_group_replicas_deletion = optional(bool)
    volume_ids                     = optional(list(string))
    xrc_kms_key_id                 = optional(string)
    source_details = object({
      type                    = string
      volume_group_backup_id  = optional(string)
      volume_group_id         = optional(string)
      volume_group_replica_id = optional(string)
      volume_ids              = optional(set(string))
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    volume_group_replicas = optional(list(object({
      availability_domain = string
      display_name        = optional(string)
      xrr_kms_key_id      = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.core_volume_groups : (
        contains([for v in ["volumeGroupBackupId", "volumeGroupId", "volumeGroupReplicaId", "volumeIds"] : lower(v)], lower(v.source_details.type))
      )
    ])
    error_message = "must be one of: \"volumeGroupBackupId\", \"volumeGroupId\", \"volumeGroupReplicaId\", \"volumeIds\""
  }
}

