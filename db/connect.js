const { Client } = require("pg");
require("dotenv").config();

const HOST =
  process.env.NODE_ENV === "production"
    ? "postgres://ltzfljbs:oqELznM5WxPWQYGjqRqjXUSCzf-EF0eu@mel.db.elephantsql.com/ltzfljbs"
    : "localhost";

const client = new Client(process.env.PGCSTRING);

const connectDB = async () => {
  await client.connect();
};

module.exports = { client, connectDB };
