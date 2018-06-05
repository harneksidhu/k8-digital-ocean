# k8-digital-ocean

Pre-requisites
Install `cfssl` and `cfssljson` from `https://pkg.cfssl.org/` on local machine.


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
pub_key="secrets/id_rsa.pub"
pvt_key="secrets/id_rsa"
ssh_fingerprint=
```

`export DO_API_TOKEN=` for ansible's dynamic inventory

## Tips
ssh_fingerprint can be obtained using `ssh-keygen -E md5 -lf id_rsa.pub | awk '{print $2}'`
`ansible -i digital_ocean.py all -m ping`

## Resources
https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean