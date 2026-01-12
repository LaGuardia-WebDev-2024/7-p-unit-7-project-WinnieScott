//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var alienX = 70;
var alienY = 60
var topY = 45;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
  fill (121, 123, 125);
  ellipse(alienX, topY, 70, 70);
  fill (66, 212, 153);
  ellipse(alienX, topY, 50, 50);
  fill (121, 123, 125);
  ellipse(alienX, alienY, 140, 45);
  fill (66, 212, 153);
  ellipse(alienX-50, alienY, 10, 10)
  ellipse(alienX-25, alienY+5, 10, 10)
  ellipse(alienX, alienY+7, 10, 10)
  ellipse(alienX+25, alienY+5, 10, 10)
  ellipse(alienX+50, alienY, 10, 10)

  quad(alienX-10, 80, alienX+10, 80, alienX+30, 300, alienX-30, 300)
  

  textSize(80);
text("🐄",300,290);



//alienX += 1;

if(alienX > 360){alienX=361};

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
