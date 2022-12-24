const express = require("express");
const { connectDB } = require("./db/connect");
require("express-async-errors");
require("dotenv").config();

const app = express();

const port = process.env.PORT || 4000;

// Imports
const usersRouter = require("./routers/users");
const authRouter = require("./routers/auth");
const errorHandlerMiddleware = require("./middleware/errorHandler");

app.use(express.json());
app.use(express.raw());

app.use("/", [usersRouter, authRouter]);
app.use(errorHandlerMiddleware);

app.get("/", (req, res) => {
  return res.status(200).json({ msg: "Hello Node with PostgreSQL." });
});

const startServer = async () => {
  try {
    await connectDB();
    app.listen(port, () => {
      console.log(`Server is listening on port ${port}...`);
    });
  } catch (error) {
    console.log(error);
  }
};

startServer();
