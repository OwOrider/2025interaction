//week03_3
void setup() {
  // put your setup code here, to run once:
  pinMode(8,OUTPUT);//負責發聲
}

void loop() {
  // put your main code here, to run repeatedly:
  tone(8,800,200);
  delay(1000);//1000ms=1秒
}
