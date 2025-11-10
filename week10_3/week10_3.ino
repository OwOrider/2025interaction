//week10_3
void setup() {
  pinMode(2,INPUT_PULLUP);
  //pinMode(3,INPUT);
  pinMode(8,OUTPUT);//發出聲音
}//pin2變成按鈕，可以HIGGH高(沒按)，可以LOW低(按)
void loop()
{
  int now = analogRead(A3);
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