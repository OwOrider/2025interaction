//week06_1 sound_library
import processing.sound.*;//使用聲音的外掛模組
SoundFile sound;//宣告SoundFile物件變數

void setup()
{
  size(500,400);
  sound = new SoundFile(this,"music.mp3");//將音樂檔設定好
  sound.play();//播放聲音
}

void draw()
{

}
