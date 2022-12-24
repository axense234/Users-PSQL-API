const bcrypt = require("bcryptjs");

const encryptPassword = async (pass) => {
  const salt = await bcrypt.genSalt(12);
  return bcrypt.hash(pass, salt);
};

const comparePasswords = async (pass, encryptedPass) => {
  const match = await bcrypt.compare(pass, encryptedPass);
  return match;
};

module.exports = { encryptPassword, comparePasswords };
