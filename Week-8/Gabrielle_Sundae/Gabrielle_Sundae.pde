Sundae sundae;
Sundae sundae2;
Cupcake cakey;
Cupcake cakey2;
PImage Macaroon;
MacRoon Roon; 
MacRoon Roon2;


void setup() {
  size(750, 750);
  background(168);
  sundae = new Sundae(width/2, height/2);
  sundae2 = new Sundae(1, 1);
  //Cupcake
  cakey= new Cupcake(width/2,height/2,100);
  cakey2= new Cupcake(width/6, height/1.3,30);
  //Macaroons
  Roon= new MacRoon(width/2,height/2,50);
  Roon2= new MacRoon (width/6, height/1.3,30);
}

void draw(){
  //background(168);
  sundae.display();
  sundae2.display();
  //Actions
  cakey.display();
  cakey2.display();
  cakey.move();
  cakey2.move();
  //Actions
  Roon.move();
  Roon2.slide();
  Roon.display();
  Roon2.display();

}