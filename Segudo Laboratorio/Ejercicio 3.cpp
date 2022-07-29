#include <iostream>
#include <iomanip>
 
using namespace std;
 
const int fil = 3;
const int col = 3;
 
int main(){
    int temp = 0;
    int matriz[fil][col];
 
    cout << "Ingrese los valores:"<<endl;
    for(int i = 0; i < fil; i++ ){
        for(int j = 0; j < col; j++ ) {
             cout<<i<<","<<j<<": ";
             cin>>matriz[i][j];
        }
    }
 
    cout << "Matriz Inicial";
    for( int i = 0; i < fil; i++ ) {
        cout << "\n";
        for(int j = 0; j < col; j++ ) {
            cout << setw(4) << matriz[i][j] << "";
        }
    }
    cout << endl;
 
 	for( int i = 0; i < fil; i++ ) {
    	for( int j = 0; j < col; j++ ) {
            for(int x = 0; x < fil; x++ ) {
                for( int y = 0; y < col; y++ ) {
 
                    if( matriz[i][j] < matriz[x][y]) {
                        temp = matriz[i][j];
                        matriz[i][j] = matriz[x][y];
                        matriz[x][y] = temp;
                    }
                }
            }
         }
    }
 
    cout << "Matriz Ordenada";
    for( int i = 0; i < fil; i++ ) {
        cout << "\n";
        for(int j = 0; j < col; j++ ) {
            cout << setw(4) << matriz[i][j] << "";
        }
    }
    cout << endl;
 
    return 0;
}
