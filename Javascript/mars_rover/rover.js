//forwardCount = 0;

 
 var myRover={
    position: [6,6],   //Initial position of rover on the grid (11x11).
    direction: ""
    };
  


//Declaring the grid 11x11
var myarray=new Array(11)
for (i=1; i <12; i++)
    myarray[i]=new Array(11);



function goForward(rover,myString) {
  

 rover.direction=myString;

  var string_direction=rover.direction;

  for (var i=0;i<string_direction.length;i++){
    var myChart=string_direction.charAt(i);
    if (rover.position[0]!==11 || rover.position[0]!==1 || rover.position[1]!==1 || rover.position[1]!==11){

      switch(myChart) {
        case 'f':
          rover.position[0]--
            roverOnGrid(rover.position[0],rover.position[1]);
        break;
        case 'r':
          rover.position[1]++
            roverOnGrid(rover.position[0],rover.position[1]);
          break;
        case 'b':
          rover.position[0]++
            roverOnGrid(rover.position[0],rover.position[1]);
          break;
        case 'l':
          rover.position[1]--
            roverOnGrid(rover.position[0],rover.position[1]);
          break;
      }
    }
       
}

 alert("Rover Position now is: [" + rover.position[0] + ", " + rover.position[1]+ "]");

  
}


  
function roverOnGrid(pos1,pos2){

      //Verifying rover isn't out of grid's boundaries(Grid is of 11x11):
       for (var i=1;i<12;i++){
         for(var j=1;j<12;j++){
          
          //Defining Grid boundaries:
          myarray[1][j]="Grid Boundary";
          myarray[11][j]="Grid Boundary";
          myarray[i][11]="Grid Boundary"
          myarray[i][1]="Grid Boundary"
         }
      }

       //Obstacles inside the grid
      myarray[4][3]="Obstacle";  
      myarray[9][8]="Obstacle";

     
      if (myarray[pos1][pos2]==="Grid Boundary"){
         alert("Rover is on the grid boundary, can't move any further");
        return;
        // alert("rover position keeps the same: [ "+pos1+ ","+ pos2+"]");
      }
      else if (myarray[pos1][pos2]==="Obstacle"){
        alert("Rover can't land here, there is an obstacle\nGoing back 1 position\nMoving to next direction");   //Isnt working well, pos1 add 1 later.
        pos1--;
        return;
        
      }
    
  }

 

 //Movement without any obstacle:
 //goForward(myRover,"rrrllfffbb"); 


 
//Rover encounter an obstacle, goes back 1 position and continue on that point to other way.
    //goForward(myRover,"ffflllb");  
   // goForward(myRover,"rrrbbrr");

   
  //Rover lands in a grid boundary, it can't move any further:
  goForward(myRover,"bbblllll"); 
