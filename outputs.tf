output "autoscaling_group_tags_id" {
  description = "Map of id values across all autoscaling_group_tags, keyed the same as var.autoscaling_group_tags"
  value       = { for k, v in aws_autoscaling_group_tag.autoscaling_group_tags : k => v.id if v.id != null && length(v.id) > 0 }
}
output "autoscaling_group_tags_autoscaling_group_name" {
  description = "Map of autoscaling_group_name values across all autoscaling_group_tags, keyed the same as var.autoscaling_group_tags"
  value       = { for k, v in aws_autoscaling_group_tag.autoscaling_group_tags : k => v.autoscaling_group_name if v.autoscaling_group_name != null && length(v.autoscaling_group_name) > 0 }
}
output "autoscaling_group_tags_region" {
  description = "Map of region values across all autoscaling_group_tags, keyed the same as var.autoscaling_group_tags"
  value       = { for k, v in aws_autoscaling_group_tag.autoscaling_group_tags : k => v.region if v.region != null && length(v.region) > 0 }
}
output "autoscaling_group_tags_tag" {
  description = "Map of tag values across all autoscaling_group_tags, keyed the same as var.autoscaling_group_tags"
  value       = { for k, v in aws_autoscaling_group_tag.autoscaling_group_tags : k => one(v.tag) if v.tag != null && length(v.tag) > 0 }
}

