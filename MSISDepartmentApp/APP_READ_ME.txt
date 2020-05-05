A file called Credentials.json has been excluded form the GitHub Repo bacause it contained passwords.
When this project is pulled down a new json file will need to be created in root of the project with this format and named Credentials.json

{
  "ConnectionString": "Server=SERVER ADDRESS; Database=DATABASE NAME; User Id=USER ID; Password=PASSWORD;"
}

In a folder located in the solution is a folder called SQLDBScripts which contains all of the SQL needed to recerate the database.