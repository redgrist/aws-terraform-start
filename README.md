# terraform_start

.aws:
---
config:
```
[default]
region=us-west-2
output=json
```
---
credentials:
```
aws_access_key_id=
aws_secret_access_key=
```

Run terraform:
```
$ terraform init
$ terraform fmt
$ terraform validate
$ terraform apply
```
DONE
Now:
```
$ terraform show
```

Now remove:

```
$ terraform destroy
```

SSH:
```
ssh-keygen -t rsa -f my_rsa_key
```
In terraform: public_key = file("/home/redgrist/aws_key/my_rsa_key.pub")

```
ssh -o "IdentitiesOnly=yes" -i my_rsa_key ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com
```

