//week10_5
void setup() {
  Serial.begin(9600);//開啟usb傳輸
  pinMode(2,INPUT_PULLUP);
  pinMode(8,OUTPUT);//發出聲音
}

void loop()
{
  delay(30);
  int now = analogRead(A3)/4;
  Serial.println(now);
  if(now > 200)tone(8,784,100);//發出523的DO
  if(now <50)tone(8,253,100); 
}