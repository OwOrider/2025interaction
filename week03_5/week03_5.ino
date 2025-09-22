//week03_5
void setup() {
  pinMode(2,INPUT_PULLUP);//按鈕button是2號，沒按下去，就會【拉高】}
  for(int i=3;i<=13;i++)
  {
    pinMode(i,OUTPUT);//都是可以發光、發亮的
  }
}
int now = 3;//現在發亮的，是pin3

void loop() {
  if(digitalRead(2)==LOW)//按下去
  {
    now = now + 1;
    if(now>13) now = 3;
    for(int i=3;i<=13;i++)
    {
      digitalWrite(i,LOW);//先全部清空，變成LOW不亮
    }
    digitalWrite(now,HIGH);//now負責亮
    delay(500);//要休息一下，等0.5秒，財部會狂亂運作
  }
}
