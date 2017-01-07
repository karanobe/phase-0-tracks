var colors = ["blue", "green", "red", "yellow"];
var names = ["Ed", "Ned", "Ted", "Jed"];

colors.push("brown");
names.push("Rebecca");

console.log(colors);
console.log(names);

var horseColors = {};

function hashCreator(array1, array2) {
  for (var i = 0; i < array1.length; i++) {
    horseColors[array1[i]] = array2[i];
  };
  return horseColors;
};

hashCreator(names, colors);
console.log(horseColors);

function carCreator(color, model, carType) {
  this.color = color;
  this.model = model;
  this.carType = carType;
  this.speed = true;
  this.fast = function() {
    if (this.speed) {
      console.log("Whoa! Your new " + this.model + " is fricking fast!"); 
    } else {
      console.log("Meh, your new " + this.model + " isn't that fast.");
    }
  }
  
  console.log('Your new car is a ' + this.color + " " + this.carType + " " + this.model + ".");
};

var newCar = new carCreator("silver", "Q40", "Infiniti");
newCar.fast();

var newNew = new carCreator("black", "Jetta", "VW");
newNew.speed = false;
newNew.fast();

var dadCar = new carCreator("blue", "Pathfinder", "Nissan");
dadCar.speed = false;
dadCar.fast();

var momCar = new carCreator("grey", "M70", "Infiniti");
momCar.fast();
