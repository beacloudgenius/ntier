NOTE:

    You need to use `aws configure`` and set your AWS ACCESS AND SECRET keys in the default ~/.aws location in the terminal in Cloud Genius Workstation

Cleanup

```
rm -rf .terraform .terraform.lock.hcl
rm -rf terraform.tfstate terraform.tfstate.backup
```

Begin

```
tofu init
tofu validate
tofu plan
tofu apply -auto-approve
```

and later

```
tofu destroy -auto-approve
```
