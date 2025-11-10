//week10_4
void setup() {
  Serial.begin(9600);//開啟usb傳輸
  pinMode(2,INPUT_PULLUP);
  pinMode(8,OUTPUT);//發出聲音
}

void loop()
{
  delay(100);
  int now = analogRead(A3);
  Serial.println(now);
  if(now > 800) // 變高
  {
    tone(0,523,100);//發出523的DO
    delay(100);
    tone(0,784,100);//發出784的SO
    delay(200);//等久一點
  }
  else if( now <200)
  {
    tone(0,523,100);//發出523的DO
    delay(100);
    tone(0,784,100);//發出784的SO
    delay(200);
  }
}