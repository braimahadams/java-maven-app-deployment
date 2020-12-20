terraform {
  backend "s3" {
    bucket = "myapp-cluster-bucket-new"
    key = "myapp/state.tfstate"
    region = "eu-west-3"
  }
}

provider "kubernetes" {
    load_config_file = "false"
    host = data.aws_eks_cluster.myapp-cluster.endpoint
    token = data.aws_eks_cluster_auth.myapp-cluster.token
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.myapp-cluster.certificate_authority.0.data)
}

data "aws_eks_cluster" "myapp-cluster" {
    name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "myapp-cluster" {
    name = module.eks.cluster_id
}

module "eks" {
    source = "terraform-aws-modules/eks/aws"
    version = "13.2.1"
    
    cluster_name = var.cluster_name
    cluster_version = var.k8s_version

    subnets = module.myapp-vpc.private_subnets
    vpc_id = module.myapp-vpc.vpc_id

    tags = {
        environment = var.env_prefix
        application = "myapp"
    }
    
    worker_groups = [
        {
            instance_type = "t2.small"
            name = "worker-group-1"
            asg_desired_capacity = 2
        },
        {
            instance_type = "t2.medium"
            name = "worker-group-2"
            asg_desired_capacity = 1
        }
    ]
}

resource "local_file" "kube_config_file" {
    content  = module.eks.kubeconfig
    filename = "kubeconfig.yaml"
    file_permission = "400"
}