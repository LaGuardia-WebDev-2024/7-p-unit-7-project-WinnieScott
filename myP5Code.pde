//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var alienX = 70;
var alienY = 60
var topY = 45;
var beam = 0;
var cowY = 290;
var cowSize = 80;
var cowX = 303;
//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
  
  
 //cow
 fill(255)
  textSize(cowSize);
 text("🐄",cowX, cowY);

  //beam
  fill (66, 212, 153, beam);
  strokeWeight(0)
  noStroke()
  quad(alienX-15, 82, alienX+15, 82, alienX+60, 300, alienX-60, 300)

  //top
  strokeWeight(2)
  stroke(0,0,0)
  fill (121, 123, 125);
  ellipse(alienX, topY, 70, 70);
  //window
  fill (66, 212, 153);
  ellipse(alienX, topY, 50, 50);
  //main
  fill (121, 123, 125);
  ellipse(alienX, alienY, 140, 45);
  //lights
  fill (66, 212, 153);
  ellipse(alienX-50, alienY, 10, 10)
  ellipse(alienX-25, alienY+5, 10, 10)
  ellipse(alienX, alienY+7, 10, 10)
  ellipse(alienX+25, alienY+5, 10, 10)
  ellipse(alienX+50, alienY, 10, 10)

alienX += 1;
beam += 3;
cowY -= 1;
cowSize -= .3;
cowX += .2;


if(alienX > 360){alienX=361};

if(alienX > 360){beam=100}

if(alienX < 361){cowY=290}

if(alienX < 361){cowSize=80}

if(alienX < 361){cowX=303}

if(cowY < 48){cowY=-10}

if(cowY < -9){beam=0}

if(alienX < 355){beam=0}

if(cowY < -9){alienX }




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
