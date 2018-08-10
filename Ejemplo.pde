Pajaro pajarito_bebedor;

void setup()
{
  size (600,600);
  pajarito_bebedor = new Pajaro(200,1000.0,0.1,-0.07,100,100,300,300);
}

void draw()
{
  
  background(255);
  pajarito_bebedor.Beber();
  pajarito_bebedor.Display();
  
  
  
}


class Pajaro
{
  float A;
  float v;
  
  float ancho;
  float alto;
  
  float f;
  float alpha;
  
  float x,y,x2,y2;
  
  
  Pajaro(float A_, float v_, float f_, float alpha_, float alto_, float ancho_, float x_, float y_  )
  {
    A=A_;
    v=v_;
    f=f_;
    alpha=alpha_;
    alto=alto_;
    ancho=ancho_;
    x=x_;
    y=y_;
    y2=y_;
    x2=x_;
    
    
    
  }
  
  void Display()
  {
    noStroke();
    fill(255,240,0);
    triangle(x+ancho/2,y,x+ancho,y+alto/4,x,y+alto/2);
    fill(240,0,0);
    ellipse(x,y,ancho,alto);
    fill(250);
    ellipse(x+ancho/4,y-alto/8,ancho/4,alto/4);
    fill(25);
    ellipse(x+ancho/4,y-alto/8,ancho/8,alto/8);
    fill(0,90,220);
    ellipse(x,y-alto/1.5,ancho/1.5,alto/2);
    fill(0,100,255);
    rectMode(CENTER);
    rect(x,y-alto/2,ancho,alto/3);
   
    
    
  }
  
  void Beber()
  {
   float t= (millis()/1000.0);
   float y1= A* sin(2 * PI * f * t) * exp (t*alpha);
   y=y1+y2;
   x=x2+(y1/2);
    
    
  }
}
