# stack-eks

## Infrastructure as code using terraform to create EKS cluster

The stack will deploy the following resources :

- **VPC** with 3 public subnets and 3 private subnets
  - Kubernetes workers will be in the private subnets with a default route to NAT Gateway.
  - To expose the application to the Internet, you would need public subnets with a default route to the Internet Gateway.
- **EKS Cluster** EKS module in charge of Creating the control plane and instance groups(EKS-managed nodes)

  - We will have one control plane and 2 workers nodes

        $ terraform init
        $ terraform apply -auto-approve

Before connecting to the cluster, update the Kubernetes context.

    aws eks update-kubeconfig --name eks-stack --region us-east-1
