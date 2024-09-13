// C program to implement
// scanf
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
void saveroots(double a, double b, double c, double x1r, double x1i, double x2r, double x2i){
 // Save the roots in a file
  FILE *fp;
  fp = fopen("ex1_root.txt", "w");
  fprintf(fp,"Roots of  %.3lfx²+%.3lfx+%.3lf=0: \t  \n" , a , b, c);
  fprintf(fp,"x1=(%.3lf)+(%.3lf)i\nx2=(%.3lf)+(%.3lf)i",x1r,x1i,x2r,x2i);
  fclose(fp);
}
void sol(double a, double b, double c){
 double x1r,x1i,x2r,x2i,tem;
 tem = b*b-4.0*a*c;
 if(tem>=0.0){ 
   x1r=(-b+sqrt(tem))/(2*a);
   x2r=(-b-sqrt(tem))/(2*a);
   printf("The roots are x1=%.3lf and x2=%.3lf:\t \n",x1r,x2r);
   saveroots(a,b,c,x1r,x1i,x2r,x2i);
  }
 else{
   x1r=-b/(2.0*a);
   x1i=sqrt(abs(tem))/(2*a);
   x2r=-b/(2.0*a);
   x2i=-sqrt(abs(tem))/(2*a);   
   printf("The roots are x1=(%.3lf)+(%.3lf)i and x2=(%.3lf)+(%.3lf)i:\t \n",x1r,x1i,x2r,x2i);
   saveroots(a,b,c,x1r,x1i,x2r,x2i);
 }
}
 
// Driver code
int main() 
{
    double  a, b, c;
    printf("Solving ax²+bx+c=0, so a>0\n");
    //printf("Do you wnat to read a file wint parameters?[y/n]\n");
    printf("Enter the coeficients of ax²+bx+c=0\n");
    printf("Enter a: ");
    scanf("%lf", &a);
    printf("Enter b: ");
    scanf("%lf", &b);
    printf("Enter c: ");
    scanf("%lf", &c);
    printf("Your cuadratic form is %.3lfx²+%.3lfx+%.3lf=0: \t  \n" , a , b, c);
    sol(a,b,c);
    printf("Your roots are in ex1_root.txt\n");
    return 0;
}

