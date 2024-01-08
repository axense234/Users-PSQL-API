const express = require("express");
const swaggerUI = require("swagger-ui-express");
const swaggerOptions = require("./utils/swagger");
const { connectDB } = require("./db/connect");
const { version } = require("./package.json");
require("express-async-errors");
require("dotenv").config();

const app = express();

const port = process.env.PORT || 4000;

// Imports
const usersRouter = require("./routers/users");
const authRouter = require("./routers/auth");
const errorHandlerMiddleware = require("./middleware/errorHandler");

app.use(express.json());

app.use("/", [usersRouter, authRouter]);
app.use(errorHandlerMiddleware);
app.use(
  `/api/${version}/docs`,
  swaggerUI.serve,
  swaggerUI.setup(swaggerOptions.docs)
);

app.get("/", (req, res) => {
  return res.status(200).json({ msg: "Hello Node with PostgreSQL." });
});

const startServer = async () => {
  try {
    await connectDB().then(() => {
      console.log("Connected to PSQL!");
    });
    app.listen(port, () => {
      console.log(`Server is listening on port ${port}...`);
    });
  } catch (error) {
    console.log(error);
  }
};

startServer();
