const { Client } = require("pg");
require("dotenv").config();

const HOST =
  process.env.NODE_ENV === "production"
    ? "mel.db.elephantsql.com"
    : "localhost";

const client = new Client({
  host: HOST,
  user: "postgres",
  port: 5432,
  password: process.env.PGPASSWORD,
  database: process.env.PGDATABASE,
});

const connectDB = async () => {
  await client.connect();
};

module.exports = { client, connectDB };
