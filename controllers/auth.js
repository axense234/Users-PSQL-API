const { client } = require("../db/connect");
const { StatusCodes } = require("http-status-codes");
const { encryptPassword, comparePasswords } = require("../utils/bcrypt");
const { createJWT } = require("../utils/jwt");

// CREATE USER
const createUser = async (req, res) => {
  const newUserContent = req.body;
  let newUserContentQuery = "";

  const { email, password } = newUserContent;

  // ENCRYPT PASSWORD BEFORE CREATING
  const encryptedPassword = await encryptPassword(password);
  newUserContent.password = encryptedPassword;

  const objectValues = Object.entries(newUserContent);

  objectValues.forEach(([key, value], index) => {
    // CHECKING FOR THE TYPE OF VALUE IN ORDER TO ADD '' IF IT IS A STRING
    // CHECKING FOR THE TYPE OF STRING TO SEE IF IT IS A DATE
    let valueToBeAdded = typeof value === "number" ? value : `'${value}'`;

    if (
      typeof value === "string" &&
      (value.startsWith("DATE") || value.startsWith("uuid_"))
    ) {
      valueToBeAdded = value;
    }

    if (index == objectValues.length - 1) {
      newUserContentQuery = newUserContentQuery.concat(valueToBeAdded);
    } else {
      newUserContentQuery = newUserContentQuery.concat(`${valueToBeAdded}, `);
    }
  });

  // CREATING THE USER
  await client.query(`
  INSERT INTO users (user_uid, username, email, password, age, date_of_birth) VALUES (${newUserContentQuery})
  `);

  // FINDING THE USER THIS TIME BY EMAIL SINCE IT IS UNIQUE
  const userResponse = await client.query(
    `SELECT * FROM users WHERE email = '${email}'`
  );

  const foundUser = userResponse.rows[0];

  // GENERATE JWT
  const token = createJWT(foundUser.user_uid, foundUser.username);

  return res
    .status(StatusCodes.OK)
    .json({ msg: "testing", user: foundUser, jwt: token });
};

// LOGIN USER BY PASSWORD,EMAIL AND USERNAME
const loginUser = async (req, res) => {
  const { password, email, username } = req.body;

  // FINDING IF A USER WITH THE PROVIDED EMAIL EXISTS
  const userResponse = await client.query(
    `SELECT * FROM users WHERE email = '${email}'`
  );

  if (userResponse.rowCount === 0) {
    return res.status(StatusCodes.NOT_FOUND).json({
      msg: `Could not find any users with the email:${email}.`,
      user: {},
    });
  }

  const foundUser = userResponse.rows[0];

  // COMPARING PASSWORD/USERNAME
  if (!password || !username) {
    return res
      .status(StatusCodes.BAD_REQUEST)
      .json({ msg: "Please provide a password and an username!", user: {} });
  }

  const match = await comparePasswords(password, foundUser.password);
  if (!match) {
    return res
      .status(StatusCodes.BAD_REQUEST)
      .json({ msg: "Passwords do not match!", user: {} });
  }

  if (username !== foundUser.username) {
    return res
      .status(StatusCodes.BAD_REQUEST)
      .json({ msg: "Usernames do not match!", user: {} });
  }

  // AT THIS POINT THE USER CAN LOG IN
  const token = createJWT(foundUser.user_uid, foundUser.username);

  return res.status(StatusCodes.OK).json({
    msg: `Successfully logged in as ${foundUser.username}.`,
    user: foundUser,
    jwt: token,
  });
};

module.exports = { createUser, loginUser };
