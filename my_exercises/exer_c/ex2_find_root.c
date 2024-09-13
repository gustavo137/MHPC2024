// C program to implement
// scanf
#include <stdio.h>
#include <math.h>
#include <stdlib.h>

double err=10E-9;

double fun(double x){
 //double x;
 return x*x*x-6.0*x*x+11.0*x-6.0;
}
double sol(double a, double b){//find a sol in the interval [-10.0,10.0]
 double mp , tem, diff;
 diff=1.0;
 while(diff>err){
  // for(int i=0;i<30;i++){  
   mp=(a+b)/2.0;
   tem=fun(mp);
   diff=b-a;
   if(tem<0.0){
     a=mp;
   }
   else{
     b=mp;
   }
   //diff=b-a;
 }
 return mp;
}
 
int main() 
{
    double  a, b,r;
    a=-10.0;
    b=10.0;
    printf("Finding a root of x³-6x²+11x-6=0 in [-10,10]:\n");
    r=sol(a,b);
    printf("root=%lf \n",r);
    //printf("Your roots are in ex1_root.txt\n");
    return 0;
}

