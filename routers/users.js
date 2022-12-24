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

router.get("/users", authenticationMiddleware, getAllUsers);
router.get("/users/:userUID", authenticationMiddleware, getUserByUID);

router.patch("/users/:userUID", authenticationMiddleware, updateUserByUID);

router.delete("/users/:userUID", authenticationMiddleware, deleteUserByUID);

module.exports = router;
