//Library: use Sketch / Import Library / Add Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//
void setup () {
  //size(500, 600); //Remind you of Display Geometry
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("../music/No_Mercy.mp3");//able to pass absolute path, file name & extension, and URL
}//End setup
//
void draw() {}//End draw
//
void keyPressed() {
  //if (key=='P' || key=='p') song1.play(); //Parameter is milli-seconds from start of audio file to start playing (illustrate with examples)
  if (key=='P' || key=='p') {//Play Pause Button
    if ( song1.isPlaying() ) {
      song1.pause();
    } else {
      song1.play();
    }
  }//End Play Pause
  int loopNum = 2; //Local Variable plays once and loops twice
  if (key=='L' || key=='l')  song1.loop(loopNum-1); //Parameter is milli-seconds from start of audio file to start playing (illustrate with examples)
  if (key=='I' || key=='i')  song1.loop(-1); //Parameter is milli-seconds from start of audio file to start playing (illustrate with examples)
  //
  if ( key=='F' || key=='f')  song1.skip(1000); //skip forward 1 second (1000 milliseconds)
  if ( key=='R' || key=='r')  song1.skip(-1000); //skip backwards 1 second, notice negative, (100millisecond
  if ( key=='M' || key=='m') {//MUTE Button
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End MUTE Button
  if ( key=='S' || key=='s' ) {// STOP Button
if ( song1.isPlaying() ) {
  
} else {
  song1.rewind();
}
}//End STOP Button
}//End keyPressed
//
void mouseClicked() {}//End mousePressed
//
//End Main Program
