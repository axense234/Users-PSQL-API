const { Client } = require("pg");
require("dotenv").config();

const client = new Client({
  host: "localhost",
  user: "postgres",
  port: 5432,
  password: process.env.POSTGRES_USER_PASS,
  database: "node",
});

const connectDB = async () => {
  await client.connect();
};

module.exports = { client, connectDB };
