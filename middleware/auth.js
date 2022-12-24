const { StatusCodes } = require("http-status-codes");
const { verifyJWT } = require("../utils/jwt");

const authenticationMiddleware = (req, res, next) => {
  const authHeader = req.headers.authorization;

  // CHECK IF WE HAVE A JWT
  if (!authHeader || !authHeader.startsWith("Bearer ")) {
    return res.status(StatusCodes.UNAUTHORIZED).json({ msg: "Unauthorized." });
  }

  const token = authHeader.split(" ")[1];

  try {
    req.user = verifyJWT(token);
    next();
  } catch (error) {
    console.log(error);
  }
};

module.exports = { authenticationMiddleware };
