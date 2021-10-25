//Credit: Christopher Ockerby, https://www.youtube.com/watch?v=c8sc_w-g3-A
class Timer {
  float Time;
  Timer(float set) {
    Time = set;
  }
  float getTime(){
    return(Time);
  }
  void setTime(float set){
    Time = set;
  }
  void countDown(){
    Time -= 1/frameRate;
  }
}
