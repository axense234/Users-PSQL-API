const express = require("express");

const router = express.Router();

// Imports
const { createUser, loginUser, authorizeUser } = require("../controllers/auth");

/**
 * @swagger
 * /auth:
 *  post:
 *   description: Authorization route to receive a token.After receiving the token, add Bearer <token> to the Authorization.
 *   tags:
 *    - AUTHORIZE Route
 *   requestBody:
 *    description: The informationed needed for authorization.
 *    content:
 *     application/json:
 *      schema:
 *       $ref: "#components/schemas/Authorization"
 *      examples:
 *       User:
 *        summary: An auth example of an user.
 *        value:
 *         username: bob
 *         password: swaggerpass
 *   responses:
 *    200:
 *     description: Authorized, you have received a token.
 *    400:
 *     description: Unauthorized.
 *
 */
router.post("/auth", authorizeUser);

/**
 * @swagger
 * /users:
 *  post:
 *   description: Route for creating a user.
 *   security:
 *    - bearerAuth: []
 *   tags:
 *    - POST Routes
 *   requestBody:
 *    description: The body of the user you want to create.
 *    content:
 *     application/json:
 *      schema:
 *       $ref: "#components/schemas/User"
 *      examples:
 *       User:
 *        summary: Random user example.
 *        value:
 *         username: Bob
 *         email: bob@gmail.com
 *         password: bob1234
 *         age: 24
 *         date_of_birth: 2023-05-08T10:39:45.433Z
 *   responses:
 *    201:
 *     description: Successfully created an user.
 */

router.post("/users", createUser);
router.post("/users/login", loginUser);

module.exports = router;
