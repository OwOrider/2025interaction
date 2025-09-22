//week03_8 Arduino
void setup() {
  Serial.begin(9600);//設定usb傳輸速度
  pinMode(8,OUTPUT);//8 叭 要會發聲
}
int beep = 1;//一開始會逼逼叫
void serialEvent()//等待USB的事件
{
  while (Serial.available())//若有資料
  {
    char now = Serial.read();
    if(now==' ') beep = 0;//空白字母，不叫
    if(now=='b') beep = 1;//字母'b'要叫
  }
}
void loop() {
  if(beep == 1)//一開始，會倒數計時
  {
    tone(8,800,200);
    delay(500);
  }
}
