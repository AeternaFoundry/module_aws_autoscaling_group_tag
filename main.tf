resource "aws_autoscaling_group_tag" "autoscaling_group_tags" {
  for_each = var.autoscaling_group_tags

  autoscaling_group_name = each.value.autoscaling_group_name
  region                 = each.value.region

  tag {
    key                 = each.value.tag.key
    propagate_at_launch = each.value.tag.propagate_at_launch
    value               = each.value.tag.value
  }
}

