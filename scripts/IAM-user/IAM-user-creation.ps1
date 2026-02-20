$rootProfile = "root_user"
$username = "yustyna"

aws iam create-user --user-name $username --profile $rootProfile 

aws iam attach-user-policy `
  --user-name $username `
  --policy-arn arn:aws:iam::aws:policy/AdministratorAccess `
  --profile $rootProfile

aws iam create-access-key `
  --user-name $username `
  --profile $rootProfile `
  | Out-File userCredentials.json

