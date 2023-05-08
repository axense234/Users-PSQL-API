const express = require("express");

const router = express.Router();

// Controllers and Middleware
const {
  getAllUsers,
  getUserByUID,
  updateUserByUID,
  deleteUserByUID,
} = require("../controllers/users");
const { authenticationMiddleware } = require("../middleware/auth");

/**
 * @swagger
 * /users:
 *  get:
 *   description: Route for getting all the users.
 *   tags:
 *    - GET Routes
 *   responses:
 *    200:
 *     description: Successfully fetched all the users.
 *    404:
 *     description: Could not find any users.
 *
 */

router.get("/users", getAllUsers);

/**
 * @swagger
 * /users/{userUID}:
 *  get:
 *   description: Route for getting a single user by userUID.
 *   tags:
 *    - GET Routes
 *   parameters:
 *    - in: path
 *      name: userUID
 *      required: true
 *      description: The user id of the user you want to get.
 *      schema:
 *       type: string
 *   responses:
 *    200:
 *     description: Found user with the given id.
 *    404:
 *     description: Could not find user with the given id.
 *  patch:
 *   description: Route for updating a user by userUID.
 *   security:
 *    - bearerAuth: []
 *   tags:
 *    - UPDATE Routes
 *   parameters:
 *    - in: path
 *      name: userUID
 *      required: true
 *      description: The user id of the user you want to update
 *      schema:
 *       type: string
 *   requestBody:
 *    description: The request body for updating an user.
 *    content:
 *     application/json:
 *      schema:
 *       $ref: "#components/schemas/User"
 *      examples:
 *       User:
 *        summary: Updating user's username.
 *        value:
 *         username: "Updated Username"
 *   responses:
 *    200:
 *     description: Successfully updated user.
 *    404:
 *     description: Could not find the user with the provided id.
 *  delete:
 *   description: Route for deleting users.
 *   security:
 *    - bearerAuth: []
 *   tags:
 *    - DELETE Users
 *   parameters:
 *    - in: path
 *      name: userUID
 *      required: true
 *      description: The id of the user you want to delete.
 *      schema:
 *       type: string
 *   responses:
 *    200:
 *     description: Successfully deleted user with the provided id.
 *    404:
 *     description: Could not find user for deletion.
 *
 */

router.get("/users/:userUID", getUserByUID);

router.patch("/users/:userUID", authenticationMiddleware, updateUserByUID);

router.delete("/users/:userUID", authenticationMiddleware, deleteUserByUID);

module.exports = router;
