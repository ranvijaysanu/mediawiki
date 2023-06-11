# README #

- Here we are creation VPC and EKS Cluster using Terraform and then installing some of the packages like helm and terraform in AWS Cloud Shell.
- After that I deploy nginx ingress controller using helm chart available in Internet.
- After that I took helm chart of mediawiki from Internet and modified the values.yaml and deployed it to run with mariadb.

## NOTES ##

Some of the best practice that can be used here are:-
- Instead of deploying database as pod we can use RDS because AWS will take care of patching and maintain availibilty of it through AZ Zones.
- For secrets passed in helm chart, we can make use of vault and fetch the secrets from vault while deploying application through Jenkins.
- We can write Jenkinsfile to deploy the application through Jenkins.
- For Terraform, we can make use of AWS Secret manager to store secrets and export variables using TF_VARS.
- We can setup HPA for application level autoscaling based on resource usage.

## STEPS ##

INFRA SETUP THROUGH TERRAFORM
-----------------------------

```
$ terraform -chdir=terraform/templates init
$ terraform -chdir=terraform/templates apply -autoapprove
```

Go to your Jumphost. In my case, it is AWS Cloudshell
-----------------------------------------------------

```
- Install kubectl, helm and terraform package
```

Deploy ingress nginx-ingress controller
----------------------------------------

```
- From helm chart from internet deploy nginx ingress controller and check that load balancer url is generated in svc or not.
```

Modify values.yaml of mediakwik and deploy
-------------------------------------------


```
- Modify mediakwik host with load balancer url generated above and pass the other mediakwik and mariadb credentials. Then Deploy it.
```

Access the application through ingress
---------------------------------------

It will apply the changes to the infrastructure.

```
- Ingress object is created as a part of helm chart. Using / as path and load balancer url as host access the application.
```

