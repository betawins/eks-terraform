# 1. Install Terraform on your server

# 2. Configure Terraform with your credentials

# 3. Open Terraform code directory in VS Code
    a) Open Terminal
    b) Terraform init --> To inialize the Plugins & Dependencies
    c) Terraform plan --> To Check what actions are getting executed like a dryrun
    d) Terraform apply --> To provision our resources on cloud provider

# 4. After Successful Prompt Message connect with our node


# 5. Connect to Cluster  

    If aws cli is not installed use the below commands to install it  

    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"  
    unzip awscliv2.zip  
    sudo ./aws/install  

    aws configure  
    aws sts get-caller-identity  
    aws eks --region us-east-1 update-kubeconfig --name eks-Cluster1  
    kubectl get nodes
    kubectl get pods  


(If Kubectl not worked then follow step 6 (For Amazon Linux 2))
# 6. Download the kubectl binary:
        (a) Download the kubectl binary using curl:
        sudo curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
        (b) Change the permission:
            sudo chmod +x kubectl
        (c) Move the kubectl binary to a directory that is in the system's PATH:
            sudo mv kubectl /usr/local/bin/
        (d) Test the kubectl installation:
            kubectl version
        (e) Check the Nodes:
            kubectl get nodes


# *** NOTE :- If ec2 instance node unable to connect then allow ssh in eks security group ***
    