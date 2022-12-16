    uses GraphABC;
    function f(x:real):real;
   begin
  f:=2*power(x,3)+(-2)*power(x,2)+(2)*x+(2);
    end;
  begin
  SetWindowWidth(500);
  SetWindowHeight(500);
  var a:=0;
  var b:=10;
  var x0:=50;
  var y0:=windowheight div 2;
  var mx:=(windowwidth-x0-30)/b;
  var my:=2*(y0-30)/b;
  line(0,y0,windowwidth,y0);
  line(x0,0,x0,windowheight);
  for var i:=1 to b do
 begin
  line(x0+round(i*mx),y0-3,x0+round(i*mx),y0+3); 
  line(x0-3,y0+round(i*my),x0+3,y0+round(i*my)); 
  line(x0-3,y0-round(i*my),x0+3,y0-round(i*my));
  textout(x0+round(i*mx),y0+10,inttostr(i));
  textout(x0-25,y0-round(i*my),inttostr(i));
  textout(x0-20,y0+round(i*my),inttostr(-i));
   end;
   textout(x0+5,y0+10,'0');
   textout(windowwidth-10,y0-15,'X');
   textout(x0+5,10, 'Y');
   var x:real;

 setfontsize(12);
 setfontcolor(clblack);
 textout(x0+250,10,'f=2*x^3-2*x^2+2*x+2');
 textout(x0+250,30,'введите u');
  var u:=readinteger;
 textout(x0+340,30,u);
 textout(x0+250,50,'введите t');
  var t:=readinteger;
 textout(x0+340,50,t);
 
     x:=a;
   while x<=b do
   begin
     if x>0 then  setpixel(x0+round(x*mx),y0-round(f(x)*my),clRed);
     x:=x+0.001;
   end;
 
   x:=u;
  while x<=t do
   begin
    if x>0 then  setpixel(x0+round(x*mx),y0-round(f(x)*my),clRed);
    x:=x+0.1;
    Setpencolor(clgreen);
    line(x0+round(x*mx),y0-round(f(x)*my),x0+round(x*mx),250);
   end;
end.
