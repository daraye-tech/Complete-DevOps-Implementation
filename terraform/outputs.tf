output "cluster_id" {
    description = "value of the EKS cluster ID"
    value = module.eks.cluster_id
}

output "cluster_endpoint" {
    description = "endpoint of the EKS control plane"
    value = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
    description = "security group ID of the EKS cluster"
    value = module.eks.cluster_security_group_id
}

output "region" {
    description = "AWS region where the EKS cluster is deployed"
    value = var.aws_region
}

output "oidc_provider_arn" {
    description = "ARN of the OIDC provider associated with the EKS cluster"
    value = module.eks.oidc_provider_arn

}
