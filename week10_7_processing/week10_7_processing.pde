//week10_7_processing
import pocessing.serial.*;
Serial myPort;
void setup()
{
  size(512,512);
  myPort = new Serial(this,"COM3",9600);
}
void draw()
{
  background(#FFFFA0);
  if(myPort.available()>0)
  {
    x = myPort.read();
    y = myPort.read();
  }
}
