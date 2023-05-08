const swaggerDocs = require("swagger-jsdoc");
const { version } = require("../package.json");
require("dotenv").config();

const swgOptions = swaggerDocs({
  definition: {
    openapi: "3.0.0",
    info: {
      title: "Users PSQL API Docs",
      version,
      contact: {
        email: "andreicomanescuonline@gmail.com",
        name: "axense234",
        url: "https://github.com/axense234",
      },
      description:
        "Swagger Documentation for the Users PSQL API using swagger-jsdoc with swagger-ui-express",
      license: {
        name: "GNU",
        url: "https://github.com/axense234/Users-PSQL-API/blob/master/LICENSE.md",
      },
    },
    servers: [
      { url: `http://localhost:${process.env.PORT}` },
      { url: "https://users-api-nep-ca.onrender.com" },
    ],
    components: {
      schemas: {
        User: {
          properties: {
            username: {
              type: "string",
            },
            email: {
              type: "string",
            },
            password: {
              type: "string",
            },
            age: {
              type: "number",
            },
            date_of_birth: {
              type: "string",
            },
          },
        },
        Authorization: {
          properties: {
            username: {
              type: "string",
            },
            password: {
              type: "string",
            },
          },
        },
      },
      securitySchemes: {
        bearerAuth: {
          type: "http",
          scheme: "bearer",
        },
      },
    },
    securityDefinitions: {
      bearerAuth: {
        type: "apiKey",
        scheme: "bearer",
        in: "header",
        name: "Authorization",
      },
    },
  },
  apis: ["./routers/*.js"],
});

const docs = swgOptions;

module.exports = { docs };
