//week10_2
void setup() {
  pinMode(2,INPUT_PULLUP);//拉高，變成5V，真的按下去，變0V(GND接地)
  pinMode(8,OUTPUT);//要加這行，才有聲音
}//pin2變成按鈕，可以HIGGH高(沒按)，可以LOW低(按)
void loop() {
  if(digitallRead(2)--LOW)//如果pin2有按下去
  {
    tone(0,523,100);//發出523的DO
    delay(100);
    tone(0,784,100);//發出784的SO
    delay(100);
  }
}
