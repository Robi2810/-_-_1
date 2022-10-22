#include <stdio.h>

int main(void) {
  int N = 0;
  int ma=0;
  scanf("%d", &N);
  int a[N*sizeof(int)];
  int b[N*sizeof(int)];
  for(int i = 0; i < N; i++){
    scanf("%d", &a[i]);
    if(a[i] > ma){
      ma = a[i];
    }
  }
  for(int i = 0; i < N; i++){
    if(a[i] < 0){
      b[i] = ma;
    }
    else{
      b[i] = a[i];
    }
    
  }
  for(int i = 0; i < N; i++){
    printf("%d ", b[i]);
  }
  return 0;
}