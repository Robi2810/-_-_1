#include <stdio.h>

int input_max(int N, int *a){
  int ma = 0;
  for(int i = 0; i < N; i++){
    scanf("%d", &a[i]);
    if(a[i] > ma){
      ma = a[i];
    }
  }
  return ma;
}

void out_put(int N, int *b){
  for(int i = 0; i < N; i++){
    printf("%d ", b[i]);
  }
}

void task(int *a, int  *b, int ma, int N){
  for(int i = 0; i < N; i++){
    if(a[i] < 0){
      b[i] = ma;
    }
    else{
      b[i] = a[i];
    }
  }
}

int main(void) {
  int ma=0;
  int N = 0;
  scanf("%d", &N);
  int a[N*sizeof(int)];
  ma = input_max(N, a);
  int b[N*sizeof(int)];
  task(a, b, ma, N);
  out_put(N, b);
  return 0;
}
