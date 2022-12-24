const express = require("express");

const router = express.Router();

// Imports
const { createUser, loginUser } = require("../controllers/auth");

router.post("/users", createUser);
router.post("/users/login", loginUser);

module.exports = router;
