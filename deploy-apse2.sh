Environment=prod

APP_NAME=tbs-sec-base
STACK_NAME=$APP_NAME-$Environment

aws cloudformation deploy \
--template-file template-apse2.yaml \
--stack-name $APP_NAME-$Environment \
--capabilities CAPABILITY_NAMED_IAM \
--region ap-southeast-2 --parameter-overrides \
Environment=$Environment \
--no-fail-on-empty-changeset \
--no-execute-changeset \
--tags Environment=$Environment StackName=$STACK_NAME TagProduct=$APP_NAME \
--profile thebetterstore
