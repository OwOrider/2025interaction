//week11_2_PACMAN_part1
//小精靈 張嘴(在動)
void setup()
{
  size(500,500);
}
int x=250,y=250;
float m = 0,dm=0.05;//嘴巴大小，嘴巴改變量
void draw()
{
  background(0);//黃色的
  fill(255,255,0);
  //ellipse(x,y,30,30);
  arc(x,y,30,30,+0.5,PI*2-0.5);//弧度
  if(m>1||m<=0)dm = -dm;//正負倒過來
  m+=dm;
}
