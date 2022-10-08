int dink, total;
void setup()
{
  size(1000, 525);
  noLoop();
}
void draw()
{
  background(197, 162, 255);
  for (int y = 50; y < 450; y = y + 100) {
    for (int x = 50; x < 950; x = x + 100) {
      Die amy = new Die(x, y);
      amy.show();
      total = total + dink;
    }
  }
  fill(255, 252, 162);
  textSize(30);
  text("Total Sum: "+total, 50, 475);
}
void mousePressed()
{
  redraw();
  total = 0;
}
class Die //models one single dice cube
{
  float myX, myY;
  int total;
  Die(float x, float y) //constructor
  {
    myX = x + 37.5;
    myY = y + 37.5;
    roll();
  }
  void roll()
  {
    dink = (int)(Math.random()*6)+1;
  }
  void show()
  {
    noStroke();
    fill(255, 255, 255);
    rect(myX-37.5, myY-37.5, 75, 75, 25);
    if (dink==1) {
      fill(255, 252, 162);
      ellipse(myX, myY, 30, 30);
      fill(255, 255, 255);
      ellipse(myX+10, myY, 15, 15);
    }
    if (dink==2) {
      star(myX-12, myY-12, 1.5);
      star(myX+12, myY+12, 1.5);
    }
    if (dink==3) {
      star(myX, myY-11, 2);
      star(myX-13, myY+11, 2);
      star(myX+13, myY+11, 2);
    }
    if (dink==4) {
      star(myX-13, myY+13, 2);
      star(myX+13, myY+13, 2);
      star(myX-13, myY-13, 2);
      star(myX+13, myY-13, 2);
    }
    if (dink==5) {
      fill(255, 252, 162);
      triangle(myX-9, myY-16, myX-16, myY-9, myX-22, myY-22);
      triangle(myX+9, myY-16, myX+16, myY-9, myX+22, myY-22);
      triangle(myX-9, myY+16, myX-16, myY+9, myX-22, myY+22);
      triangle(myX+9, myY+16, myX+16, myY+9, myX+22, myY+22);
      star(myX, myY, 2);
    }
    if (dink==6) {
      fill(255, 252, 162);
      star(myX, myY, 2);
      triangle(myX-(0.08)+5, myY+(7.638)+6, myX+(11.58)+5, myY+(16.3)+6, myX+(7.24)+5, myY+(2.436)+6);
      triangle(myX-(11.92)-5, myY+(16.058)+6, myX-(0.08)-5, myY+(7.638)+6, myX-(7.28)-5, myY+(2.286)+6);
      triangle(myX+(7.24)+7.8, myY+(2.436)-3, myX+(19.08)+7.8, myY-(5.984)-3, myX+(4.56)+7.8, myY-(6.134)-3);
      triangle(myX-(4.42)-7.8, myY-(6.226)-3, myX-(18.96)-7.8, myY-(6.376)-3, myX-(7.28)-7.8, myY+(2.286)-3);
      triangle(myX+(4.56), myY-(6.134)-7.8, myX+(0.2), myY-(19.998)-7.8, myX-(4.42), myY-(6.226)-7.8);
    }
  }
  void star(float x, float y, float s) {
    fill(255, 252, 162);
    triangle(x-(11.92/s), y+(16.058/s), x-(0.08/s), y+(7.638/s), x-(7.28/s), y+(2.286/s));
    triangle(x-(0.08/s), y+(7.638/s), x+(11.58/s), y+(16.3/s), x+(7.24/s), y+(2.436/s));
    triangle(x+(7.24/s), y+(2.436/s), x+(19.08/s), y-(5.984/s), x+(4.56/s), y-(6.134/s));
    triangle(x+(4.56/s), y-(6.134/s), x+(0.2/s), y-(19.998/s), x-(4.42/s), y-(6.226/s));
    triangle(x-(4.42/s), y-(6.226/s), x-(18.96/s), y-(6.376/s), x-(7.28/s), y+(2.286/s));
    ellipse(x, y, 15/s, 15/s);
  }
}
