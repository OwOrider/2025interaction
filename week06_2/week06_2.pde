//week06_2
import processing.sound.*;

SoundFile sample;//宣告SoundFile變數
Waveform waveform;//宣告Waveform變數

// Define how many samples of the Waveform you want to be able to read at once
int samples = 100;//一次讀入多少sample:100個sample

public void setup() {
  size(640, 360);
  background(255);

  // Load and play a soundfile and loop it.
  sample = new SoundFile(this, "beat.aiff");//讀入音樂檔
  sample.loop();//循環播放 VS 之前.play()只是播一次

  // Create the Waveform analyzer and connect the playing soundfile to it.
  waveform = new Waveform(this, samples);//想用100格，來分析音樂
  waveform.input(sample);//用剛剛的音樂檔，進行分析
}

public void draw() {
  // Set background color, noFill and stroke style
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();

  // Perform the analysis
  waveform.analyze();
  
  beginShape();
  for(int i = 0; i < samples; i++){
    // Draw current data of the waveform
    // Each sample in the data array is between -1 and +1 
    vertex(
      map(i, 0, samples, 0, width),
      map(waveform.data[i], -1, 1, 0, height)
    );
  }
  endShape();
}
