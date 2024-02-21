# Assignment

The directory already contains code to create a lambda function in AWS using Terraform, however
the code is far from perfect and will require adjustment to function properly.

Note: The backend for terraform can be freely choosen.

## Tasks

1. Extend / fix the terraform infrastructure code
2. Implement the logic for the **lambda** function (any common scripting language of choice (py,js, go etc))
3. (Bonus) Implement monitoring

## Lambda 

Please write a lambda function that reads data from the 'users' dynamodb table and prints/returns the ids
only for entries that have both SSO and 2FA. To test the function you will need to populate the table with data. The section below shows how such a table should look like with regards to attributes.

## Dynamodb table structure

| Id  | Name  | Email  | SSO  | 2FA  |
|---|---|---|---|---|
| 12312313  | Mark Mustermann  | test2mark@gmail.com  | N | Y  |
| 12093103901 | Test User | test@gmail.com   | Y | N  |
| 12301301  | Random UserName  | randomusername@gmail.com  | N  | N  |

### Attribute types

* ID (N)
* Name (S)
* Email (S)
* SSO (BOOL)
* 2FA (BOOL)