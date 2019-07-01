var db = require("../models");
var passport = require("../config/passport");
var moment = require('moment');
let axios = require("./axiosCalls.js")

module.exports = function(app) {
  app.get("/verify", function(req,res){ // "age" is the input from age page.
    let age = req.body.age;       // format is MMDDYYYY, for exp: 07101990
                            
    let dif = moment( age , "MMDDYYY").fromNow();
    if (parseInt(dif)>=21){
      res.redirect('/index');
      console.log("User passed 21");
    }
    else {
      res.redirect('https://www.cdc.gov/alcohol/fact-sheets/minimum-legal-drinking-age.htm');
      console.log("User is under 21");
    }
  });


  // user login
  app.post("/api/login", passport.authenticate("local"), function(req, res) {
    res.redirect('/index')

    console.log("login successful");
  });
   
  // user signup
  app.post("/api/signup", function(req, res) {
    db.User.create({
      email: req.body.email,
      password: req.body.password
    })
      .then(function() {
        res.redirect('/')
        console.log("signup successful");
      })
      .catch(function(err) {
        res.status(401).json(err);
      });
  });

  // log out
  app.get("/logout", function(req, res) {
    req.logout();
    res.redirect("/index");
    console.log("logout successful");
  });

  app.post("/test", function(req, res) {
    if (req.user) {
      // req.user.id holds their id from the database
      console.log('req.user.id: ' + req.user.id)
    } else {
      res.send(false)
    }
  })
  
  app.post("/search", function(req, res) {  // search drinks by name or ingredient

    if (req.body.method === "name") {
      axios.searchByName(req.body.data)
        .then(data => res.json(data))

    } else if (req.body.method === "ing") {
      axios.searchByIng(req.body.data)
        .then(data => res.json(data))

    } else if (req.body.method === "id") {
      axios.searchByID(req.body.data)
        .then(data => res.json(data))

    } else if (req.body.method === "popular") {
      axios.mostPopular()
        .then(data => res.json(data))

    } else if (req.body.method === "random") {
      axios.getRandom()
        .then(data => res.json(data))

    } else if (req.body.method === "category") {
      axios.searchByCat(req.body.data)
        .then(data => res.json(data))
    }
  })

  app.post("/favorite", function(req, res) {
    // check if user is logged in
    if (req.user) {
      db.user_favorites.create({
        name: req.body.name,
        category: req.body.category,
        alcoholic: req.body.alcoholic,
        glass: req.body.glass,
        instructions: req.body.instructions,
        pic: req.body.pic,
        ingredients: req.body.ingredients,
        measurements: req.body.measurements,
        UserId: req.user.id
      })
      .then(user => console.log('success'))
      .catch(err => console.log(err))
    } else {
      // user is not logged in
      res.send(false)
    }
  })

  app.delete("/api/delete/:id", function(req, res) {
    db.user_favorites.destroy({
      where: {
        id: req.params.id
      }
    })
    .then(() => {
      res.status(200).end()
    })
  })

  // Get all cocktails for main display
  app.get("/api/cocktails", function(req, res) {
    db.Cocktails.findAll({}).then(function(dbCocktails) {
      res.json(dbCocktails);
    });
  });

  // Create a custom cocktail
  app.post("/custom_drinks", function(req, res) {
    console.log(JSON.stringify(req.body))
      // check if user is logged in
    if (req.user) {
      console.log(req.body)
      db.Custom_drinks.create({
        name: req.body.name,
        category: req.body.category,
        alcoholic: req.body.alcoholic,
        glass: req.body.glass,
        instructions: req.body.instructions,
        pic: req.body.pic,
        ingredients: req.body.ingredients,
        measurements: req.body.measurements,
        UserId: req.user.id
      })
      .then(user => console.log('success'))
      .catch(err => console.log(err))
    } else {
      // user is not logged in
      res.send(false)
    }
  });

  // Delete a cocktail by id
  app.delete("/api/cocktails/:id", function(req, res) {
    db.Custom_drink.destroy({ where: { id: req.params.id } }).then(function(
      dbCocktails
    ) {
      res.json(dbCocktails);
    });
  });

  app.put("/api/cocktails/:id", function(req, res) {
    db.Custom_drink.update({ where: { id: req.params.id } }).then(function(
      dbCocktails
    ) {
      res.json(dbCocktails);
    });
  });



// end of module.exports
};

