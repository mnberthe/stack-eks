### Infrastructure as code using terraform to create EKS cluster

The stack will deploy the following resources :

- **VPC** with 3 public subnets and 3 private subnets
  - Kubernetes workers will be in the private subnets with a default route to NAT Gateway.
  - To expose the application to the Internet, you would need public subnets with a default route to the Internet Gateway.
- **EKS Cluster** EKS module in charge of Creating the control plane and instance groups([EKS-managed nodes](https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html),)

        $ terraform init
        $ terraform apply -auto-approve

Before connecting to the cluster, update the Kubernetes context.

    aws eks update-kubeconfig --name eks-stack --region us-east-1

### GithubActions

We use GHA to automate the process to create the cluster
When we push to stage branch we only format, validate and plan
When a PR is merged on main branch we deploy the cluster with an ingress controller
