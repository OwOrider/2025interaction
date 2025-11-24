//week12_3_dino_jump_part3
//恐龍跳跳跳
PImage img;
void setup()
{
  size(300,500);
  img = loadImage("dino.png");
}
float boardX = 200,boardY = 400;
float x = 200, y = 400, dx = 0,dy = 0;
void draw()
{
  background(255);
  rect(boardX,boardY,100,5);
  if(y+100 <= boardY && y+dy+100 >= boardY && boardX <= x+100 && x <= boardX+100  )
  {
    y = boardY-100;
    dy = 0;
  }
  else
  {
    y += dy;
    if(y<400)dy += 0.98;
    else dy = 0;
  } 
  
  image(img,x,y,100,100);
  y += dy;
}
void keyPressed()
{
  if(keyCode == UP)dy = -15;
  if(keyCode == LEFT)dx = -1;//往左
  if(keyCode == RIGHT)dx = +1;//往右
}
void keyReleased()
{
  if(keyCode == LEFT || keyCode == RIGHT)dx = 0;//放開，就不要再左右移動了
}
