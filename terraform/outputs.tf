output repo_url  {
  value = aws_ecr_repository.myapp-repo.repository_url
}

output cluster_url {
  value = module.eks.cluster_endpoint
}

output kubeconfig {
  value = module.eks.kubeconfig
}

output ecr_user_name {
  value = data.aws_ecr_authorization_token.token.user_name
}

output ecr_user_password {
  value = data.aws_ecr_authorization_token.token.password
  sensitive = true
}