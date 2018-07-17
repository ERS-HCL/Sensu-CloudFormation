# Sensu_Cloud Formation
This repository contains the Cloud Formation template and Ansible role and Shell script to install and configure Sensu server components Sensu client, plugins and checks for system and  Cloud on RHEL 7.

This Cloud Formation template allows you to deploy an instance of Sensu-server and it's components like (sensu-API,sensu-client,uchiwa and Redis)on a Linux RHEL 7 VM. This will Template deploy Ec2 instance in AWS Oregon Region by using default VPC and default security groups. The Sensu-server is configured with system level checks, container checks, redis checks and cloud checks. 

# I. Deploy Sensu-server VM using AWS Cloud Formation

   Deploy Sensu-server/client using the AWS Cloud Formation template in AWS CLI
   # I.a Configure AWS CLI
     > sudo yum install python-pip -y
     > pip install awscli 
     > aws configure   -- provide aws subscription details here
        AWS Access Key ID [None]: xxxxxxxxxx
        AWS Secret Access Key [None]: xxxxxxxxx
        Default region name [None]: us-west-2
        Default output format [None]: json
   Then Execute the below comamnd to deploy Sensu Server/client
    
    > aws cloudformation deploy --template /path/of/template/file/cf_sensu.json --stack-name stackname --parameter-overrides SSHKey=  sshkey_pair_name

In above Command provide the path for the template(cf_sensu.json) and provide SSH keypair name which is already available in your region.
  
   # I.b Deploy Sensu-server/client using the AWS Cloud Formation template in AWS Console
   
   open AWS console in the browser and access Cloud Formation Service and then click on > create stack then browse your template file, then > provide stack name, then select ssh_keypair. 
   After Creation of stack Successful, Collect Sensu Server IP in EC2 Dashboard of AWS.  Then Access Uchiwa using Sensu-server IP. 
   
   http://sensu-server-ip:8080/
 
# II. Deploy Sensu-server VM using Ansible.

If You have already Running VM with ansible Configured, then clone this Git Repo and execute a command like

    > ansible-playbook setup.yml         -----for sensu-server and client.

    > ansible-playbook setup_client.yml   ---for sensu-client only.

Access Uchiwa dashboard at http://SensuServerIP:8080
   
# III. Deploy Sensu-server/client VM using Shell Script.

If You are not aware of AWS and Ansible You can use this Script to install Sensu Server and its Components on Your Box. Execute the below command

> curl https://raw.githubusercontent.com/sravankumar-n/sensu_install/master/install_sensu.sh | bash -s

After the successful installation 
Access Uchiwa dashboard at http://SensuServerIP:8080
