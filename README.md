# **Users PostgresSQL API**

A node, express and postgres project with the goal of practicing my postgresql skills along with node and express.

## Description

A node, express and postgres project with the goal of practicing my postgresql skills along with node and express.
Used the "pg" package in order to create a postgresql client
with options that match my local postgresql database.Had a lot of fun with the queries and data manipulation to make things actually work.

Also the documentation for this project was pretty enjoyable to create as well.

## Getting Started

### Dependencies

- Git installed on your machine
- Docker installed on your machine(optional)
- A PostgreSQL DB(cloud, local, container)
- Check package.json for other dependencies

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

- rename **.env.sample** to **.env** and put your own environment variables:
  - **PGHOST** = the host of your postgres database (default is localhost)
  - **PGUSER** = the user of your postgres database (default is "postgres")
  - **PGPORT** = the port of your postgres database (default is 5432)
  - **PGPASSWORD** = the password of your postgres user
  - **PGDATABASE** = the name of your postgres table
  - **PORT** = the port which your server listens on
  - **SWAGGER_USERNAME** = your own swagger username for authorization purposes
  - **SWAGGER_PASSWORD** = your own swagger password for authorization purposes
  - **JWT_SECRET_KEY** = the jwt secret key used for authorization purposes

### Setup

- You might want to create your own table and insert some default users. In case you are lazy you can just import the **"default_users.sql"** file

### Executing program

- Test using nodemon

```
npm test
```

- Test using docker-compose

```
docker build -t users-psql-api .
docker compose up
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
