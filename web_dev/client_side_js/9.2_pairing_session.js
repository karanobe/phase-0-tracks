console.log("The script is running!");

function addRedBorder(event) {
  console.log("You clicked!");
  event.target.style.border = "15px solid red";
}

var variable = document.getElementById("id");
variable.addEventListener("click", addRedBorder);//
