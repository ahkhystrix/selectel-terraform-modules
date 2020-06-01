# The Selectel project with user and quotas

This environment will create a Selectel VPC project with an user and quotas.

The environment includes one example (you can see other examples in the module."project" and use here):

1. Defined project name and user name, random user password, defined quotas.

You can set quotas for only one region and zone.

All quotas are indicated in the example with default parameters and are commented out. You can set your own value for any quota.

Attention! The quota for RAM is set in megabytes, the number should be divided by 256 without a remainder.

## Example usage

```sh
terraform init

env \
  TF_VAR_sel_token=yyy_xxx \
  terraform apply -target=module.project
```

