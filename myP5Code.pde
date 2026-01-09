//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var alienX = 70;
var topY = 45;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
  fill (121, 123, 125);
  ellipse(alienX, topY, 70, 70);
  ellipse(alienX topY, 50, 50);
  ellipse(alienX, 60, 140, 45);
  

  textSize(80)
text("🐄",300,290);





  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
