const { Client } = require("pg");
require("dotenv").config();

const HOST =
  process.env.NODE_ENV === "production" ? "users-api-nep-ca" : "localhost";

const client = new Client({
  host: HOST,
  user: "postgres",
  port: 5432,
  password: process.env.POSTGRES_USER_PASS,
  database: "node",
});

const connectDB = async () => {
  await client.connect();
};

module.exports = { client, connectDB };
