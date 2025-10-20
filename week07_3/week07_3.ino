//week07_3
void setup() {
  // put your setup code here, to run once:
  pinMode(10,OUTPUT);//
  pinMode(11,OUTPUT);//
  pinMode(12,OUTPUT);//把第12隻腳，能送出資料OUTPUT
  pinMode(13,OUTPUT);//把第13隻腳，能送出資料OUTPUT
}

void loop() {
  // put your main code here, to run repeatedly:
  for(int i=10;i<=13;i++)
  {
    digitalWrite(13,LOW);//暗掉
    digitalWrite(i-1,LOW);//暗掉
    digitalWrite(i,HIGH);//發亮
    delay(500);
  }
}
