# Assignment

The directory already contains code to create a lambda function in AWS using Terraform, however
the code is far from perfect and will require adjustment to function properly.

Note: The backend for terraform can be freely choosen.

## Tasks

1. Extend / fix the terraform infrastructure code
2. Implement the logic for the **lambda** function (any common scripting language of choice (py,js, go etc))
3. (Bonus) Implement monitoring

## Lambda 

Please write a lambda function that reads data from the given dynamodb table (TODO create skeleton for that) and saves the ids
only for entries that have both SSO and 2FA.

# Dynamodb (would provide)

| Id  | Name  | Email  | SSO  | 2FA  |
|---|---|---|---|---|
| 12312313  | Asf  | ajfsjf@gmail.com  | N | Y  |
| 12093103901 | Asdf | eifj@gmail.com   | Y | N  |
| 12301301  | Asdfsff  | weiofajwof@gmail.com  | N  | N  |