module "repository" {
  source  = "ALT-F4-LLC/repository/github"
  version = "0.5.0"

  for_each = merge(local.repos)

  description        = each.value.description
  gitignore_template = each.value.gitignore_template
  name               = each.value.name
  topics             = each.value.topics
  visibility         = each.value.visibility
  owner              = var.owner
}

