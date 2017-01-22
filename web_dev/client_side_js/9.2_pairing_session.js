console.log("The script is running!");

function catsAreCool(event) {
  console.log("You clicked!");
  event.target.style.border = "3px solid red";
}

var variable = document.getElementById("page");
variable.addEventListener("click", catsAreCool);//


function addListItem(event) {
  console.log("you have added a list item!!!");
  var node = document.createElement("LI");
  var textnode = document.createElement("test");
  node.appendChild(textnode);
  document.getElementById("list").appendChild(node);
}

  var ul = document.getElementById("list");
  ul.addEventListener("click", addListItem);
