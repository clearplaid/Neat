const bcrypt = require("bcryptjs");

module.exports = function(sequelize, DataTypes) {
  // create user model
  const User = sequelize.define("User", {
    email: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
      validate: {
        isEmail: true
      }
    },
    password: {
      type: DataTypes.STRING,
      allowNull: false
    }
  });

  User.associate = models => {
    User.hasMany(models.user_favorites)
  }
  User.associate = models => {
    User.hasMany(models.Custom_drink)
  }

  // check if an unhashed password entered by the user can be compared to the hashed password stored in our database
  User.prototype.validPassword = function(password) {
    return bcrypt.compareSync(password, this.password);
  };

  // hash the user's password
  User.addHook("beforeCreate", function(user) {
    user.password = bcrypt.hashSync(user.password, bcrypt.genSaltSync(10), null);
  });
  return User;
};
