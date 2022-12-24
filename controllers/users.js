const { client } = require("../db/connect");
const { StatusCodes } = require("http-status-codes");

// GET ALL USERS
const getAllUsers = async (req, res) => {
  const foundUsers = await client.query("SELECT * FROM users");

  if (foundUsers.rowCount < 1) {
    return res
      .status(StatusCodes.NOT_FOUND)
      .json({ msg: "Could not find any users.", users: [] });
  }

  return res.status(StatusCodes.OK).json({
    msg: "Successfully fetched from PostgreSQL.",
    nbHits: foundUsers.rowCount,
    users: foundUsers.rows,
  });
};

// GET USER BY UID
const getUserByUID = async (req, res) => {
  const { userUID } = req.params;
  const userResponse = await client.query(
    `SELECT * FROM users WHERE user_uid = '${userUID}'`
  );

  const foundUser = userResponse.rows[0];

  if (!foundUser) {
    return res
      .status(StatusCodes.NOT_FOUND)
      .json({ msg: `Could not find user with the uid:${userUID}.`, user: {} });
  }

  return res.status(StatusCodes.OK).json({
    msg: `Successfully found user with the uid:${userUID}`,
    user: foundUser,
  });
};

// UPDATE USER BY UID
const updateUserByUID = async (req, res) => {
  const { userUID } = req.params;
  const columnsToUpdate = req.body;

  let columnsToUpdateQuery = "";

  // UPDATE FROM users SET column_name = value,...
  // i want to make it so you can update multiply columns with one request

  const updateObject = Object.entries(columnsToUpdate);

  updateObject.forEach(([key, value], index) => {
    // CHECKING FOR THE TYPE OF VALUE IN ORDER TO ADD '' IF IT IS A STRING
    const valueToBeAdded = typeof value === "number" ? value : `'${value}'`;

    // CHECKING IF IT IS THE LAST ITEM IN THE ARRAY SO WE CAN REMOVE THE ,
    if (index == updateObject.length - 1) {
      columnsToUpdateQuery = columnsToUpdateQuery.concat(
        `${key} = ${valueToBeAdded}`
      );
    } else {
      columnsToUpdateQuery = columnsToUpdateQuery.concat(
        `${key} = ${valueToBeAdded}, `
      );
    }
  });

  // UPDATING THE USER
  await client.query(
    `UPDATE users SET ${columnsToUpdateQuery} WHERE user_uid = '${userUID}'`
  );

  // FINDING IT AGAIN
  const foundUser = await client.query(
    `SELECT * FROM users WHERE user_uid = '${userUID}'`
  );

  return res
    .status(StatusCodes.OK)
    .json({ msg: "idk lol", user: foundUser.rows[0] });
};

// DELETE USER BY UID
const deleteUserByUID = async (req, res) => {
  const { userUID } = req.params;

  // FINDING IT USING THE UID
  const foundUser = await client.query(
    `SELECT * FROM users WHERE user_uid = '${userUID}'`
  );

  if (foundUser.rowCount === 0) {
    return res
      .status(StatusCodes.NOT_FOUND)
      .json({ msg: `Could not find user with UID:${userUID}`, user: {} });
  }

  // DELETING THE USER
  await client.query(`DELETE FROM users WHERE user_uid = '${userUID}'`);

  return res.status(StatusCodes.OK).json({
    msg: `Successfully deleted user with UID:${userUID}`,
    user: foundUser.rows[0],
  });
};

module.exports = {
  getAllUsers,
  getUserByUID,
  updateUserByUID,
  deleteUserByUID,
};
