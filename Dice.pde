Die yeah;
int dotSum = 0;

void setup()
{
  size(300,300);
  textSize(20);
  noLoop();
}
void draw()
{
  background(192);
  fill(0);
  for(int j = 0; j <= 250; j+=25){
    for(int i = 0; i <= 300; i+=25){
      yeah = new Die(i,j,24,24,2);
      yeah.show();
      yeah.roll(i,j);
    }
  }
  text("Total: " + dotSum, 100, 295);
  System.out.println(dotSum);
}
void mousePressed()
{
  dotSum = 0;
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, dots, sizeX,sizeY,circleSize;
  
  Die(int x, int y, int sizX, int sizY, int cirSi) //constructor
  {
    dots = 1;
    myX = x;
    myY = y;
    sizeX = sizX;
    sizeY = sizY;
    circleSize = cirSi;
  }
  void roll(int shiftX, int shiftY)
  {
    dots = (int)(Math.random()*6+1);
    int sumX = 0;
    fill(0);
    if(dots == 1){
      ellipse(12+shiftX,12+shiftY,circleSize,circleSize);
      dotSum++;
    }else if (dots == 2){
      dotSum+=2;
      for(int y = 6 ; y <= 18; y+=12){
        for(int x = 6; x<=18; x+=12){
          if((sumX == 0)||(sumX == 3))
            ellipse(x+shiftX,y+shiftY,circleSize,circleSize);
          sumX++;
        }
       }
    }else if (dots == 3){
      sumX=0;
      dotSum+=3;
      for(int y = 6 ; y <= 18; y+=12){
        for(int x = 6; x<=18; x+=12){
          if((sumX == 0)||(sumX == 3))
            ellipse(x+shiftX,y+shiftY,circleSize,circleSize);
          sumX++;
        }
       }
      ellipse(12+shiftX,12+shiftY,circleSize,circleSize);
    }else if (dots == 4){
      dotSum+=4;
      for(int y = 6 ; y <= 18; y+=12){
        for(int x = 6; x<=18; x+=12){
            ellipse(x+shiftX,y+shiftY,circleSize,circleSize);
        }
       }
    }else if (dots == 5){
      dotSum+=5;
      for(int y = 6 ; y <= 18; y+=12){
        for(int x = 6; x<=18; x+=12){
            ellipse(x+shiftX,y+shiftY,circleSize,circleSize);
        }
       }
      ellipse(12+shiftX,12+shiftY,circleSize,circleSize);
    }else{
      dotSum+=6;
      for(int y = 6 ; y <= 18; y+=6){
        for(int x = 6; x<=18; x+=12){
            ellipse(x+shiftX,y+shiftY,circleSize,circleSize);
        }
       }      
    }
  }

  void show()
  {
    fill(255);
    rect(myX,myY,sizeX,sizeY);
  }
}
