int raindropX=(int) random(1000);
int raindropY=100;
int score= 0 ;
int speed= 10;
int bucket= 0;
PImage backgroundImage;
void setup() {
  size(1000, 1000);
  backgroundImage = loadImage("rain.png");
  
}
void draw() {       

//winning text
  if (score>=10) {
   
    fill(0, 255, 255);
    textSize(50);
    text("Congratulations, you won!", 215, 500);
  } 
    
    else {
    noStroke();
    fill(34, 204, 255);
  image(backgroundImage, 0, 0,1000,1000);
    ellipse(raindropX, raindropY, 20, 20);
    raindropY =raindropY + speed;
   
    fill(0,102,0);
    rect(mouseX, 900, 100, 100);
    fill(34, 204, 255);
    rect(mouseX, 1000-bucket*100/10, 100, 100);
   
    if (raindropY>1000) {              //raindrop placement
      raindropY=100;
      checkCatch(raindropX);
      raindropX=(int) random(1000);
      print(score);
    }
  }
}

void checkCatch(int x) {              //Checks if you got raindrop
  if (x > mouseX && x < mouseX+100)
   { speed++;
    score++;
  bucket++;}
else if (score>0)
{
  bucket--;
    score--;
}
}
