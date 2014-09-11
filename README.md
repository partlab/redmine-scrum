# Redmine with Redmine Backlogs plugin & Flatly light redmine theme

## About Redmine

Redmine is a flexible project management web application written using Ruby on Rails framework.

## About Redmine Backlogs

Redmine Backlogs is a Redmine plugin for scrum/agile teams.

## Using

Create a .env file

| Variables           | Descriptions        |
| --------------------|---------------------|
| DATABASE            | Database name       |
| DATABASE_HOST       | Databse host        |
| DATABASE_USERNAME   | Database user       |
| DATABASE_PASSWORD   | Database password   |
| SECRET_TOKEN        | Secret token        |
| DEPLOY_TO           | Deploy path         |
| SERVER              | Server name         |
| USER                | User service        |


```bash
$ cap production deploy:setup_config
$ cap production deploy
```
