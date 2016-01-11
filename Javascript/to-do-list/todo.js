window.onload = function() {

// the following code adds event listeners to the buttons
// you'll learn more about this later
// for this exercise, you are going to write the functions for
// what happens when the user clicks on the buttons.
  var saveButton = document.getElementById('save-button');
  saveButton.addEventListener('click', addToDoItem, false);

  var doneButton = document.getElementById('done-button');
  doneButton.addEventListener('click', markAsDone, false);


  function addToDoItem() {

    var myLi = document.createElement("li");   // Creates a <li> tag                         
    var inputText = document.getElementById("todo-input").value;     //.value gets text from input box.
    myLi.textContent=inputText;
    var ul=document.getElementById('todo-list-items');
    //var ul=document.querySelector('#todo-list-items');
    ul.appendChild(myLi);
  }

  function markAsDone() {
    var list = document.getElementById("todo-list-items");   // Get the <ul> element with id="todo-list-items".
    var firstElement=list.querySelector('li'); //Gets the first element li that encounter.
    var myLi = document.createElement("li"); 
    myLi.textContent=firstElement.textContent;    //Add the text of the firstElement inside the li tags.
    var doneList=document.querySelector('#done-list-items');
    doneList.appendChild(myLi);   //Append first element of to do list to the done-list.
    list.removeChild(firstElement);  //Position 4 because white spaces of indented <li> count as text too.
  }
}