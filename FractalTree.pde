private double fractionLength = .8; 
private int smallestBranch = 20; 
private double branchAngle = .4;  
private int Color = 20;
public void setup() 
{   
  size(640,480);    
frameRate(20);

} 
public void draw() 
{   
  background(0);   
stroke(1+Color);
  line(320,500,320,400);   
  drawBranches(320,400,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  Color= Color+1;
  if (Color >255)
  Color=10;
double angle1 = angle+branchAngle; 
double angle2= angle-branchAngle;
branchLength=branchLength*fractionLength;
int endX1 = (int)(branchLength*Math.cos(angle1) + x);
int endY1 = (int)(branchLength*Math.sin(angle1) + y);
int endX2 = (int)(branchLength*Math.cos(angle2) + x);
int endY2 = (int)(branchLength*Math.sin(angle2) + y);
line(x,y,endX1,endY1);   
line(x,y,endX2,endY2);   
if (branchLength>smallestBranch){
drawBranches(endX1,endY1,branchLength,angle1);
drawBranches(endX2,endY2,branchLength,angle2);
}
} 
