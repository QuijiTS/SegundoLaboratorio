#include<iostream>
using namespace std;

int main(){
  int n1, n2, res, x=0;
  cout<<"Ingrese el numero menor:";
  cin>>n1;
  
  cout<<"Ingrese el numero mayor:";
  cin>>n2;
  
  cout<<"Los numeros primos son:";
  
  for(int i=n1;i<=n2;i++){
    for(int j=1;j<=i;j++){
        res=i%j;
        if(res==0){
            x=x+1;
        }
    }
    if(x==2){
        cout<<" "<<i;
    }
    x=0;
  }
}
