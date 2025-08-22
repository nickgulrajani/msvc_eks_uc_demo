output "repository_urls" {
  description = "Map of repository names to URLs"
  value = {
    for k, v in aws_ecr_repository.repositories : k => v.repository_url
  }
}

output "repository_arns" {
  description = "Map of repository names to ARNs"
  value = {
    for k, v in aws_ecr_repository.repositories : k => v.arn
  }
}

output "repository_registry_ids" {
  description = "Map of repository names to registry IDs"
  value = {
    for k, v in aws_ecr_repository.repositories : k => v.registry_id
  }
}

output "repository_names" {
  description = "List of repository names"
  value       = values(aws_ecr_repository.repositories)[*].name
}
