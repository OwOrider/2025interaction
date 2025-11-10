//week10_7
void setup() {
  Serial.begin(9600);//開啟usb傳輸
  pinMode(2,INPUT_PULLUP);
  pinMode(8,OUTPUT);//發出聲音
}

void loop()
{
  delay(30);//要慢一點，不然processing會接不了
  int x = analogRead(A2);//把搖桿的x接在A2
  int y = analogRead(A3);//把搖桿的y接在A3
  Serial.write(x/4);//把0~1023變成0~255
  Serial.write(y/4);
  if(x>900)tone(8,784,100);
  if(x<100)tone(8,523,100);
  if(y>900)tone(8,659,100);
  if(y<100)tone(8,,100);
}