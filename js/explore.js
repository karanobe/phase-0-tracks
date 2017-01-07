// create a var that takes in a string as an argument and reverses the letters.
// initialize counter, set its "while" conditions
// give the increment commant that should happen, after each iteration of the loop.
var reversedString = ''
function reverse(string) {
  for (var i = string.length - 1; i >= 0; i--) {
    reversedString += string[i];
  }
  console.log(reversedString);
}



// Driver Code
string = "BALL IS LIFE"
var kobeBryant = "GOD"

if (kobeBryant == "GOD") {
  reverse(string);
}
else  {
  console.log("Is ball life?");
};



