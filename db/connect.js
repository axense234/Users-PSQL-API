const { Client } = require("pg");
require("dotenv").config();

const clientOptions =
  process.env.NODE_ENV === "production"
    ? process.env.PGCSTRING
    : {
        host: "localhost",
        user: "postgres",
        port: 5432,
        password: process.env.PGPASSWORD,
        database: process.env.PGDATABASE,
      };

const client = new Client(clientOptions);

const connectDB = async () => {
  await client.connect();
};

module.exports = { client, connectDB };
