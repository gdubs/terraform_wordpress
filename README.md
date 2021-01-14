# Wordpress POC

## What's happening

1. Creates mysql database instance

    a. Creates SQL instance on GCP
    
    b. Creates database
    
    c. Creates users that will be used by wordpress image

2. Creates deployment and service for wordpress

    a. Downloads wordpress image and then deploys on cluster


## Executing scripts

Review plan on what's going to be executed

```bash
    terraform plan
```


Start creation of db instance and deployment of k8 app and service

```bash
    terraform apply
```
