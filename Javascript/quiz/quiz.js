


var responses_array=[];
var user={};

// And instead, write a function that will ask for the user’s name and save the answer in the user object.
function myName(){
	'use strict';
	var name = prompt('What is your name?');
	
	if (name===""){
		alert("Please, enter your name.");
		return myName();
	}
	
	user.name=name;

	return name;
}



function question1(){
	'use strict';

	var booleanAnswer = prompt(" Please answer true or false: The action of cd is that change into another directory.")
	booleanAnswer=booleanAnswer.toLowerCase();
	if(booleanAnswer==="true")
		return true;
	else if (booleanAnswer==="false")
		return false;
	else{
		alert("The answer is only true or false. Please try again");
		return question1();
	}
}

function question2(){
	'use strict';

	var booleanAnswer = prompt(' Please answer yes or no: A String can be represented by no quotes.');
	
	if (booleanAnswer.toLowerCase()==='yes')   //If user select yes the answer is wrong(false)
		booleanAnswer=false;
	else if(booleanAnswer.toLowerCase()==='no') //If select no, the answer is correct(true)
		booleanAnswer=true; 
	else
		return question2(); 
	
 
	return booleanAnswer;
}


function question3() {
	'use strict';
  var multipleChoice = prompt("Choose one of the city where the IronHack course is given?: San Francisco, Madrid, Rome");
  multipleChoice = multipleChoice.toLowerCase();
  
  switch (multipleChoice) {
    	
    	case "san francisco":
    	case "rome":
    		return false;
    		break;
    	case "madrid":
    		return true;
    		break;
    	default:
    		return question3();


   }
 }


function question4(){
	var booleanAnswer = prompt("Answer true or false:The 'use strict' can't' be used in the global space but only inside functions.");
	booleanAnswer=booleanAnswer.toLowerCase();
	
	console.log(booleanAnswer);
   if (booleanAnswer==="true")
   		return true;
   	else if( booleanAnswer ==="false")
   	   return false;
   	
   	else
   		return question4();

 }
	
	function question5(){
	var booleanAnswer = prompt("Which year JavaScript was born: 1995, 1996, 1998?");
	booleanAnswer=booleanAnswer.toLowerCase();
	
	switch(booleanAnswer){
		case "1995":
			return true;
			break;
		case "1996":
			return false;
			break;
		case "1998":
			return false;
			break;
		default:	
			alert("Please type only one of the years given on top");
			return question5();
	}
 

   
 }
 
 function quiz_result(responses_array){

 	countTrue=0;
 	countFalse=0;

 	for (var i=0;i<responses_array.length;i++){

 		if (responses_array[i]===true)
 			countTrue++;
 		else
 			countFalse++;

 		
 	}
 	user.Correct=countTrue;
 	user.Incorrect=countFalse;
 }

 	

 		

 function show_results(){

 	var result="Name: "+ user.name +"\nCorrect answers: " + user.Correct+"\nWrong answers: " + user.Incorrect
 	alert(result);
  }
 
myName();
responses_array.push(question1());
responses_array.push(question2());
responses_array.push(question3());
responses_array.push(question4());
responses_array.push(question5());
quiz_result(responses_array);
show_results();
