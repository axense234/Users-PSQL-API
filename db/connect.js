const { Client } = require("pg");
require("dotenv").config();

const HOST =
  process.env.NODE_ENV === "production"
    ? "postgres://ltzfljbs:oqELznM5WxPWQYGjqRqjXUSCzf-EF0eu@mel.db.elephantsql.com/ltzfljbs"
    : "localhost";

const clientOptions =
  process.env.NODE_ENV === "production"
    ? process.env.PGCSTRING
    : {
        host: HOST,
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
