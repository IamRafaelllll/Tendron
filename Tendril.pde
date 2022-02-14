class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  public Tendril(int len, double arg, int x, int y)
  {
    myNumSegments = len;
    myAngle = arg;
    myX = x;
    myY = y;
  }
  public void show()
  {
    int startX = myX;
    int startY = myY;

    if(myNumSegments >= 100){
      stroke(55,0,0);
    }
    else if(myNumSegments >= 25){
      stroke(255);
    }
    else if(myNumSegments >= 7){
      stroke(51,0,0);
    }
    else {
      stroke(255);
    }
    for(int i = 0; i < myNumSegments; i++){
      myAngle += Math.random()*0.4-0.2;
      int endX = startX + (int)(SEG_LENGTH*Math.cos(myAngle));
      int endY = startY + (int)(SEG_LENGTH*Math.sin(myAngle));
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    if(myNumSegments>7){
      Cluster viral = new Cluster(myNumSegments / 4, startX, startY);
    }
  }
}
