
export or set variables

```
export AWS_ACCESS_KEY_ID=<id>
export AWS_SECRET_ACCESS_KEY=<secret>
export AWS_DEFAULT_REGION=<region>
export KUBECONFIG=config
```

```
cd eks-getting-started
terraform apply

terraform output kubeconfig | tee ../config
```


```
cd ..
terraform apply
```
