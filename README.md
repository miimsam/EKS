### Overview

###### Define the following environment variables manually. They will be invoked by terraform:  
`AWS_ACCESS_KEY_ID=XXXXXXXXXXXXXXXX`  
`AWS_SECRET_ACCESS_KEY=XXXXXXXXXXXXXXXX`  
`AWS_DEFAULT_REGION=eu-west-2`  

###### Create the S3 bucket manually in order to use as terraform backend:  
`aws s3 mb s3://technical-assignment --region eu-west-2`  


###### Create a new VPC with subnets on each Availability Zone with a single NAT Gateway:  
- Change the Directory to `./cluster/VPC` and run the following commands:  
`terraform init -backend-config=backend.tfvars`  
`terraform plan -out=vpc.tfplan`  
`terraform apply vpc.tfplan`  



###### Create a Kubernetes cluster with EC2 autoscaling group composed by Spot instances autoscaled out/down based on CPU average usage:  
- Change the Directory to `./cluster/EKS` and run the following commands:  
`terraform init -backend-config=backend.tfvars`  
`terraform plan -out=eks.tfplan`  
`terraform apply eks.tfplan`  



###### Create Ingress/LoadBalancer for created EKS cluster with "eks.meysam.dev" DNS entry.  
- Change the Directory to `./cluster/INGRESS` and run the following commands:  
`terraform init -backend-config=backend.tfvars`  
`terraform plan -out=ingress.tfplan`  
`terraform apply ingress.tfplan`  



###### Deploy Jenkins Helm Chart on created EKS cluster. The Jenkins UI will be accessable on "https://eks.meysam.dev/jenkins/login":  
(Chart Ref: https://github.com/jenkinsci/helm-charts/tree/main/charts/jenkins)  
`helm install -f jenkins/values.yaml  --generate-name jenkins`  