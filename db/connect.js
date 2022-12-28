const { Client } = require("pg");
require("dotenv").config();

const clientOptions = {
  host: process.env.PGHOST || "localhost",
  user: process.env.PGUSER || "postgres",
  port: process.env.PGPORT || 5432,
  password: process.env.PGPASSWORD,
  database: process.env.PGDATABASE,
};

const client = new Client(clientOptions);

const connectDB = async () => {
  await client.connect();
};

module.exports = { client, connectDB };
