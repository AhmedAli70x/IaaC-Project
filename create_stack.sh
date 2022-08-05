
aws cloudformation package --template-file main.yml --s3-bucket s33final > out.yml
aws cloudformation create-stack --stack-name IaaC-final  --template-body  file://out.yml   --parameters file://myinfra.json --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1


