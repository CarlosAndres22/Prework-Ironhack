// EJERCICIOS DECODIFICADOR DE PALABRAS....
var words;

 words = [
    "dead",         // 1st -> d
    "bygone",       // 2nd -> y
    "landing",      // 3rd -> n
    "cheaply",      // 4th -> a
     "assumed",      // 5th -> m
     "incorrectly",  // 1st -> i
     "attention",    // 2nd -> t
     "agent"         // 3rd -> e
 ];

 var words1 = [
    "January", "lacks", "caveats", "hazardous", "DOORS",
    "crying", "arrogantly", "climate", "proponent", "rebuttal"
 ];

var words2 = [
    "Issuing", "anecdotal", "reticles", "selecting", "recurring",
    "nodes", "belonging", "externally", "braziers"
];

function decode (arrayOfWords){
    var index = 0;
    var message = "";
    for (var i = 0; i < arrayOfWords.length; i++){
        message = message + arrayOfWords[i].charAt(index);
        index = index + 1;
        if (index % 5 === 0){
            index = 0;
        }
    }
    return console.log(message) ;
}

decode(words);
//FIZZBUZZ GAME

for (var i=1; i <= 50; i++)
{
    if (i % 15 == 0)
        console.log("FizzBuzz");
    else if (i % 3 == 0)
        console.log("Fizz");
    else if (i % 5 == 0)
        console.log("Buzz");
    else
        console.log(i);
}
//  EJERCICIO ORDEN ARREGLO
var foods = [ "pizza", "cookies", "ice cream", "steak", "burgers", "bread" ];
//even es par
function w(array,string){
   if (string === "forwards") {
for (i = 0; i < array.length; i = i + 1) {
    console.log(array[i]);
}
   } 
   
   if (string === "backwards") {
for (i = 5; i >=0; i--) {
    console.log(array[i]);
}
   } 
   
 if (string === "evens"){
    for (i = 0; i < array.length; i = i + 1) {
    if ( i % 2 === 0) {
        console.log(array[i]);
    }
}
 }  
   
  if (string === "odds"){
      for (i = 0; i < array.length; i = i + 1) {
    if (i % 2 !== 0) {
        console.log(array[i]);
    }
}
  } 
   }
   
w(foods,"evens");
//EJERCICIO CONCATENACION PAISES

names = [ "Canada", "Mexico", "Turkey", "United States", "Japan" ];


function prepareNames (arrayOfNames) {
    var listOfCountries = "";
    
    for (var i = 0; i < arrayOfNames.length; i = i + 1){
        
        listOfCountries = listOfCountries + arrayOfNames[i];
        if (i === arrayOfNames.length - 2){
            listOfCountries = listOfCountries + " and ";
        } else if (i !== arrayOfNames.length - 1){
            listOfCountries = listOfCountries + ", ";
        } 
        
        
    }
    console.log(listOfCountries);
}

prepareNames(names);
//CONVERTIR UN OBJETO EN UN ARRAY
var country;

country = {
    name: "Uruguay",
    continent: "South America",
    capital: "Montevideo"
};
var countries;


function funcion (object){
    countries = [];

countries.push(country.name);
countries.push(country.continent);
countries.push(country.capital);


return console.log(countries);

}
funcion (country);
//SUMAS ACUMULATIVAS;


function sumas (number){
    var x=0;
     
    for (var y=1;y <= number;y++){
    
   var suma=y+x;
    console.log(suma);
    x=x+1;
     
    }
}
sumas(15);

//IMPRIMIR CON EL MINIMO DE LETRAS
var strs = [
    "I like pie.", "Hello.", "Shorts.", "This is a long one.",
    "Kinda medium.", "A.", "Shorty."
];

function contador (printMinium){
  for(var w=0;w<strs.length;w++) {
    if (strs[w].length >= printMinium ){
        console.log(strs[w]);
      
  }
       }
    }
contador(7);


// AGREGAR ELEMENTOS A ARRAY
var foods1 = ["cookies", "steak"];
var foods2 = ["pizza", "salad"];
var foods3 = ["pizza", "salad", "bacon", "chili"];

function addFoods(array) {
    if (array.indexOf('pizza') === -1) array.push('pizza');
    if (array.indexOf('bacon') === -1) array.push('bacon');
    
    return console.log ( array);
}

addFoods(foods1);


