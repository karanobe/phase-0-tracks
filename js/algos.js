// function finding the longest word or phrase
// create a variable that represents the first idx of the array and then loop through
// the array and compare the lengths of the strings in the array

// if find a word with greater length, reassign the variable to the new word and repeat
// until the loop is finished looping through the array and has the final longest word or phrase
// return the longest word

// Release 0
function longestWord(array) {
  var longest = array [0];
  for (var i = 0; i < array.length; i++) {
    var words = array[i];
    if (words.length >= longest.length) {
      longest = words;
    }
  };
  return longest;
};

// Release 1
function keyMatchFinder(hash1, hash2) {
  for (var key in hash1) {
    for (var value in hash2) {
      if (value == key) {
        console.log(true);
      } else {
        console.log(false);
      };
    }
  };
}

// Release 2:
var wordArray = []

function randomWord(number) {
  var string = '';
  var alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  var index = 0
  while (index < number) {
    var idx = Math.floor(Math.random() * alphabet.length)
    string += alphabet[idx];

    index += 1
  };
  wordArray.push(string);
  console.log(wordArray);
}

// DRIVER CODE: RELEASE 2
var i = 0;

do {
  randomWord(Math.floor(Math.random() * 10))
  i++;
}
while (i <= 10);

console.log(longestWord(wordArray));

// DRIVER CODE: RELEASE 0
var longArray = ['red','yellow','pink','blue','black','purple','magenta']
var shortArray = ['forward','back','left','right']

console.log(longestWord(longArray));
console.log(longestWord(shortArray));

// DRIVER CODE: RELEASE 1
var jack = {name: 'Jack', age: 34};
var steve = {name: 'Steve', age: 43};
var john = {name: 'John', age: 43};
var josh = {name: 'Josh', age: 34}
keyMatchFinder(jack, steve);
keyMatchFinder(john, josh);
keyMatchFinder(jack, john);

// DRIVER CODE: RELEASE @
randomWord(3)
randomWord(10)

