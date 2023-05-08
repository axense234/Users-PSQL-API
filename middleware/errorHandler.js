const { StatusCodes } = require("http-status-codes");

const errorHandlerMiddleware = (err, req, res, next) => {
  const errObject = {
    code: err.code || StatusCodes.INTERNAL_SERVER_ERROR,
    msg: err.message || "Unidentified error.Please try again later.",
  };

  if (err.code === "23505") {
    errObject.code = StatusCodes.BAD_REQUEST;
    errObject.msg = "Email not unique.Please provide a unique email.";
  }

  console.log(err);

  return res.status(errObject.code).json({ msg: errObject.msg });
};

module.exports = errorHandlerMiddleware;
