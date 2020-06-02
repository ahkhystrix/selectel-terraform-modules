# The Floating IP

This environment will create a Selectel VPC project with an user and the Floating IP.

## Example usage

```sh
# Initialize
terraform init

# Create the Selectel project, user
env \
  TF_VAR_sel_token=yyy_xxx \
  TF_VAR_sel_account=xxxxxx \
  terraform apply -target=module.project

# Create the all others
env \
  TF_VAR_sel_token=yyy_xxx \
  TF_VAR_sel_account=xxxxxx \
  terraform apply

# Destroy the all exclude module.project
env \
  TF_VAR_sel_token=yyy_xxx \
  TF_VAR_sel_account=xxxxxx \
  terraform destroy -target=module.floating_ip

# Destroy the all others
env \
  TF_VAR_sel_token=yyy_xxx \
  TF_VAR_sel_account=xxxxxx \
  terraform destroy
```
