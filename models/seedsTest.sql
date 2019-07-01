USE neat_db;

CREATE TABLE Cocktails (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(1000) NULL,
    category VARCHAR(1000) NULL,
    alcoholic VARCHAR(1000) NULL,
    glass VARCHAR(1000) NULL,
    pic VARCHAR(1000) NULL,
    instructions VARCHAR(1000) NULL,
    ingredients VARCHAR(1000) NULL,
    createdAt VARCHAR(1000) NULL,
    updatedAt VARCHAR(1000) NULL,
    PRIMARY KEY (id)
);

INSERT INTO Cocktails (name, category, alcoholic, glass, pic, instructions, ingredients, createdAt, updatedAt)
VALUES ("Mojito" , "Cocktail" , "alcoholic", "Highball glass" , "https://www.thecocktaildb.com/images/media/drink/rxtqps1478251029.jpg" , "Muddle mint leaves with sugar and lime juice. Add a splash of soda water and fill the glass with cracked ice. Pour the rum and top with soda water. Garnish and serve with straw.","Light rum, 2 oz -Lime, Juice of 1 -Sugar, 2 tsp -Mint, 3 -Soda water ", now(), now());

INSERT INTO Cocktails (name, category, alcoholic, glass, pic, instructions, ingredients, createdAt, updatedAt)
VALUES ("Old Fashioned" , "Cocktail" , "alcoholic", "Old-fashioned glass" , "https://www.thecocktaildb.com/images/media/drink/vrwquq1478252802.jpg" , "Place sugar cube in old fashioned glass and saturate with bitters, add a dash of plain water. Muddle until dissolved. Fill the glass with ice cubes and add whiskey. Garnish with orange twist, and a Cocktail_tab cherry." , "Bourbon, 4.5 cL -Angostura bitters, 2 dashes -Sugar, 1 cube -Water, dash ", now(), now());

INSERT INTO Cocktails (name, category, alcoholic, glass, pic, instructions, ingredients, createdAt, updatedAt)
VALUES ("Long Island Tea" , "Ordinary Drink" , "alcoholic", "Highball glass" , "https://www.thecocktaildb.com/images/media/drink/ywxwqs1439906072.jpg" , "Combine all ingredients (except cola) and pour over ice in a highball glass. Add the splash of cola for color. Decorate with a slice of lemon and serve." , "Vodka, 1/2 oz -Light rum, 1/2 oz -Gin, 1/2 oz -Tequila, 1/2 oz -Lemon water, Juice of 1/2 -Coca-Cola, 1 splash ", now(), now());

INSERT INTO Cocktails (name, category, alcoholic, glass, pic, instructions, ingredients, createdAt, updatedAt)
VALUES ("Negroni" , "Ordinary Drink" , "alcoholic", "Old-fashioned glass" , "https://www.thecocktaildb.com/images/media/drink/tutwwv1439907127.jpg" , "Stir into glass over ice, garnish and serve." , "Gin, 1 oz /Campari, 1 oz /Sweet Vermouth, 1 oz ", now(), now());

INSERT INTO Cocktails (name, category, alcoholic, glass, pic, instructions, ingredients, createdAt, updatedAt)
VALUES ("Whiskey Sour" , "Ordinary Drink" , "alcoholic", "Old-fashioned glass" , "https://www.thecocktaildb.com/images/media/drink/o56h041504352725.jpg" , "Shake with ice. Strain into chilled glass, garnish and serve. If served 'On the rocks', strain ingredients into old-fashioned glass filled with ice." ,"Blended whiskey, 2 oz -Lemon, Juice of 1/2 -Powdered sugar, 1/2 tsp -Cherry, 1 -Lemon , 1/2 slice ", now(), now());

INSERT INTO Cocktails (name, category, alcoholic, glass, pic, instructions, ingredients, createdAt, updatedAt)
VALUES ("Dry Martini" , "Cocktail" , "alcoholic", "Cocktail glass" , "https://www.thecocktaildb.com/images/media/drink/71t8581504353095.jpg", "Straight: Pour all ingredients into mixing glass with ice cubes. Stir well. Strain in chilled martini cocktail glass. Squeeze oil from lemon peel onto the drink, or garnish with olive.", "Gin, 2/3 oz -Dry Vermouth, 1/3 oz -Olive, 1 ", now(), now());

INSERT INTO Cocktails (name, category, alcoholic, glass, pic, instructions, ingredients, createdAt, updatedAt)
VALUES ("Daiquiri" , "Ordinary Drink" , "alcoholic", "Cocktail glass" , "https://www.thecocktaildb.com/images/media/drink/usuuur1439906797.jpg", "Pour all ingredients into shaker with ice cubes. Shake well. Strain in chilled cocktail glass.", "Light Rum, 1 1/2 oz -Lime, Juice of 1/2 -Powdered sugar, 1 tsp ", now(), now());

INSERT INTO Cocktails (name, category, alcoholic, glass, pic, instructions, ingredients, createdAt, updatedAt)
VALUES ("Margarita" , "Ordinary Drink" , "alcoholic", "Cocktail glass" , "https://www.thecocktaildb.com/images/media/drink/wpxpvu1439905379.jpg", "Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.", "Tequila, 1 1/2 oz -Triple sec, 1/2 oz -Lime juice, 1 oz -Salt,  ", now(), now());

INSERT INTO Cocktails (name, category, alcoholic, glass, pic, instructions, ingredients, createdAt, updatedAt)
VALUES ("Manhattan" , "Cocktail" , "alcoholic", "Cocktail glass" , "https://www.thecocktaildb.com/images/media/drink/ec2jtz1504350429.jpg", "Stirred over ice, strained into a chilled glass, garnished, and served up.", "Sweet Vermouth, 3/4 oz -Bourbon, 2 1/2 oz Blended -Angostura bitters, dash -Ice, 2 or 3 -Maraschino cherry, 1 -Orange peel, 1 twist of ", now(), now());

INSERT INTO Cocktails (name, category, alcoholic, glass, pic, instructions, ingredients, createdAt, updatedAt)
VALUES ("Moscow Mule" , "Punch / Party Drink" , "alcoholic", "Copper Mug" , "https://www.thecocktaildb.com/images/media/drink/3pylqc1504370988.jpg", "Combine vodka and ginger beer in a highball glass filled with ice. Add lime juice. Stir gently. Garnish.", "Vodka, 2 oz -Lime juice, 2 oz -Ginger ale, 8 oz ", now(), now());

INSERT INTO Cocktails (name, category, alcoholic, glass, pic, instructions, ingredients, createdAt, updatedAt)
VALUES ("Alabama Slammer" , "Ordinary Drink" , "alcoholic", "Highball glass" , "https://www.thecocktaildb.com/images/media/drink/qtwxwr1483387647.jpg", "Pour all ingredients (except for lemon juice) over ice in a highball glass. Stir, add a dash of lemon juice, and serve.", "Southern Comfort, 1 oz -Amaretto, 1 oz -Sloe gin, 1/2 oz -Lemon juice, 1 dash ", now(), now());

INSERT INTO Cocktails (name, category, alcoholic, glass, pic, instructions, ingredients, createdAt, updatedAt)
VALUES ("Alaska Cocktail" , "Ordinary Drink" , "alcoholic", "Cocktail glass" , "https://www.thecocktaildb.com/images/media/drink/wsyryt1483387720.jpg", "Stir all ingredients with ice, strain contents into a cocktail glass. Drop in a twist of lemon and serve.", "Orange bitters, 2 dashes -Gin, 1 1/2 oz -Yellow Chartreuse, 3/4 oz -Lemon peel, Twist of ", now(), now());