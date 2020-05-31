# The Selectel project with user

This environment will create a Selectel VPC project with an user.

The environment includes three examples, two of which are commented out:

1. Defined project name and user name, random user password
2. Defined project name, user name, user password
3. Random project name, user name, user password 

If you want to test one of them, then comment out the code of the first example and uncomment the code of the selected example.

## Example usage

```sh
terraform init

env \
  TF_VAR_sel_token=yyy_xxx \
  terraform apply -target=module.project
```

