# The NAT

This environment will create a Selectel VPC project with an user and the NAT.

## Example usage

```sh
terraform init

env \
  TF_VAR_sel_token=yyy_xxx \
  TF_VAR_sel_account=xxxxxx \
  terraform apply -target=module.project

env \
  TF_VAR_sel_token=yyy_xxx \
  TF_VAR_sel_account=xxxxxx \
  terraform apply
```
