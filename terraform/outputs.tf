output repo_url  {
  value = aws_ecr_repository.myapp-repo.repository_url
}

output cluster_url {
  value = module.eks.cluster_endpoint
}