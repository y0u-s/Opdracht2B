import java.util.List;
String[] data;
String[] tokens;
  int labelX = 10;
  int labelY= 248;
int cat;
int XaxisY = 300;

void setup() {
String[] data=loadStrings("scatterplot.txt");
  size(500, 500);
  
  for(int i = 50; i <= 450; i= i + 64){
    fill(50);
   text(labelX, i,462); 
    labelX =labelX + 10;
  };
 

  for(int i = 400; i >50; i= i - 62){
    fill(50);
   text(labelY, 22,i); 
    labelY =labelY + 275;
  };
 
   line(50, 450, 450, 450);
  line(50,450,50,50);

  

  text("EIG1", 253,475);
  text("EIG2", 5,250);
  
 
   for(int i = 1; i < data.length; i++) {
      String[] axes = data[i].split("\\t");
     cat = Integer.parseInt(axes[0]);
     
   axes[1] = axes[1].replace(",0","");
   axes[2] = axes[2].replace(",0","");
    

   int x = Integer.parseInt(axes[1]);
 
   int y = Integer.parseInt(axes[2]);
   
    Float xas = map(x,10,70,50,width-50);
    Float yas = map(y,1667,248,50,height-100);
    
    if(cat==1) {
     fill(255,0,0); 
    } 
    if(cat==2){
      fill(0,255,0);
    }
    if(cat==3){
      fill(0,0,255);
    }
    if(cat==4){
      
     fill(0,255); 
    }
    
   noSmooth();
   ellipse(xas,yas,5,5);
   }
 
 legenda();
 
  }
 void legenda(){
   text("Legenda",85,30);
   text("CAT1", 85, 55);
    text("CAT2", 85, 80);
     text("CAT3", 85, 105);
       text("CAT4", 85, 130);
       
   fill(255,0,0);
   ellipse(138,53,5,5);
   
  
   fill(0,255,0);
   ellipse(138,77,5,5);
   
  
   fill(0,0,255);
   ellipse(138,102,5,5);
   
   fill(0,255);
   ellipse(138,127,5,5);
 
 }
 