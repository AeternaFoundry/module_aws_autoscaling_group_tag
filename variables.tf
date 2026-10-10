variable "autoscaling_group_tags" {
  description = <<EOT
Map of autoscaling_group_tags, attributes below
Required:
    - autoscaling_group_name
    - tag (block):
        - key (required)
        - propagate_at_launch (required)
        - value (required)
Optional:
    - region
EOT

  type = map(object({
    autoscaling_group_name = string
    region                 = optional(string)
    tag = object({
      key                 = string
      propagate_at_launch = bool
      value               = string
    })
  }))
}

