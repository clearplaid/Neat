var db = require("../models");
var path = require("path");

module.exports = function(app) {
  // Load index page
  // app.get("/", function(req, res) {
  //   // req.user will determine if user is logged in
  //   res.render("index", {user: req.user})
  // });

  // Load index page currently pulling from db to populate will need to change this to axios to populate
  // can be used for custom and favorited later
  app.get("/index", function(req, res) {
    db.Cocktails.findAll({}).then(function(dbCocktails) {
      res.render("index",{
        msg: "Popular Cocktails!",
        cocktails: dbCocktails
      });
    });
  });

  // Load cocktails modal(currently not a modal) and pass in a cocktail by id
  // currently loads individual drink through link on index page with corresponding drink
  app.get("/cocktails/:id", function(req, res) {
    db.Cocktails.findOne({ where: { id: req.params.id } }).then(function(
      dbCocktails
    ) {
      res.render("cocktails", {
        cocktails: dbCocktails
      });
    });
  });
  

  // ***** boilerplate code ***** 


  // Load example page and pass in an example by id
  app.get("/example/:id", function(req, res) {
    db.Example.findOne({ where: { id: req.params.id } }).then(function(
      dbExample
    ) {
      res.render("example", {
        example: dbExample
      });
    });
  });

  // Render 404 page for any unmatched routes
  app.get("*", function(req, res) {
    res.render("404");
  });
};
