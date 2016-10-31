/*Super Pong by Gabrielle Rios
  It's Pong, but with a vanishing paddle! This depressing game of Pong, in which
  there is no AI to play against and an ever-increasing point system to offer you
  hollow comfort in your ability to hit a coded circle with a coded paddle, comes 
  with a paddle that slowly shrinks every time you gain a point. The increasing 
  difficulty and lack of reward make this game a truly pointless experience, with
  little to no value, entertainment or otherwise, besides an increase in peripheral
  vision awareness and hand-eye coordination. Enjoy! ;-D )*/

float ballX;
float ballY;
float xDirection = 10;
float yDirection = 5;
int point = 0;
//int miss = 0;
float paddleX;

void setup() {
  size(650,700);
  noStroke();
  paddleX = 6;
  //ballX = 50;
  ballY= height/2;
}

void draw() {

  if(mousePressed){ point = 0;} //miss = 0; //scorekeeping function
  float paddleX = 100/(point + 10);//changes paddle size if ball hits wall
  if(ballX > width) {//determines ball boundaries on x-axis
    xDirection = -xDirection;
    float distance = abs(mouseY - ballX);
    if(distance > paddleX) point += 1;//point gained function
    //else miss += 1;
  }
  if(ballY > height || ballY < 0) { yDirection = -yDirection;}//ball boundaries on y-axis
  if(ballX < 30) {//paddle buffer(before ball hits)
    if(ballY > mouseY - 50 && ballY < mouseY + 50){ xDirection = -xDirection;}
  }
  
  ballX += xDirection;
  ballY += yDirection;
  
  background(255, 80, 120);
  fill(255);
  rectMode(CENTER);
  ellipse(ballX, ballY, 40,40);//ball
  rect(5, mouseY, 20,20*paddleX);//paddle(use var for height to change size in conditional)
  
  //if(mousePressed){ellipse(ballX, random(1,100), 40,40);}//ball reset
  text("point: " + point, 10,20);//visual point counter 
  //text("miss: " + miss, 10,40);
  
}