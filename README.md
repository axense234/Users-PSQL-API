# **Users PostgresSQL API**

A node, express and postgres project with the goal of practicing my postgresql skills along with node and express.

## Description

A node, express and postgres project with the goal of practicing my postgresql skills along with node and express.
Used the "pg" package in order to create a postgresql client
with options that match my local postgresql database.Had a lot of fun with the queries and data manipulation to make things actually work.

Also the documentation for this project was pretty enjoyable to create aswell.

## Getting Started

### Dependencies

- check package.json for details
- you might also want your own postgresql database

### Installing

- first clone the repo

```
git clone https://github.com/axense234/Users-PSQL-API.git
```

- then install the required packages

```
cd Users-PSQL-API
npm install
```

- rename **.env.sample** to **.env** and put your own environment variables respectively:
  - **PGPASSWORD** = the password of your postgres user
  - **PGDATABASE** = the name of your postgres database
  - **PORT** = the port you want the api to run on
  - **JWT_SECRET_KEY** = your jwt secret key for jwt uses
  - **SWAGGER_USERNAME** = your own swagger username for authorization purposes
  - **SWAGGER_PASSWORD** = your own swagger password for authorization purposes

### Executing program

- test the api with nodemon

```
npm test
```

## Authors

- axense234(me)

## Version History

- 1.1
  - Changed a few things around, added an authorization route for swagger docs, added swagger docs, improved README.md, created LICENSE.md
  - See [commit change](https://github.com/axense234/Users-PSQL-API/commits/master) or See [release history](https://github.com/axense234/Users-PSQL-API/releases)
- 1.0
  - Initial Release

## License

This project is licensed under the GNU License - see the LICENSE.md file for details
