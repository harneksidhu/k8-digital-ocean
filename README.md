# k8-digital-ocean


Run the following in `terraform/`

```
terraform init 

terraform plan \
  -var-file="secrets/production.tfvars"

terraform apply \
  -var-file="secrets/production.tfvars"
```

Create this file in `terraform/secrets/production.tfvars`
```
do_token=
pub_key="keys/id_rsa.pub"
pvt_key="keys/id_rsa"
ssh_fingerprint=
```

## Tips
ssh_fingerprint can be obtained using `ssh-keygen -E md5 -lf id_rsa.pub | awk '{print $2}'`

## Resources
https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean