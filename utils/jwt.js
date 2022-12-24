const jwt = require("jsonwebtoken");
require("dotenv").config();

const createJWT = (UUID, username) => {
  return jwt.sign({ uid: UUID, username }, process.env.JWT_SECRET_KEY, {
    expiresIn: "1h",
  });
};

const verifyJWT = (token) => {
  const payload = jwt.verify(token, process.env.JWT_SECRET_KEY);
  return payload;
};

module.exports = { createJWT, verifyJWT };
