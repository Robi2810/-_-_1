#include <stdio.h>
int input_max(FILE *input, int N, int *a){
  int ma = 0;
  for(int i = 0; i < N; i++){
    fscanf(input, "%d", &a[i]);
    if(a[i] > ma){
      ma = a[i];
    }
  }
  return ma;
}

void out_put(FILE * out, int N, int *b){
  for(int i = 0; i < N; i++){
    fprintf(out, "%d ", b[i]);
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
int main(int argc, char *argv[]) {
  FILE *input = fopen(argv[1], "r");
  FILE *out = fopen(argv[2], "w");
  int ma=0;
  int N = 0;
  fscanf(input, "%d", &N);
  int a[N*sizeof(int)];
  ma = input_max(input, N, a);
  int b[N*sizeof(int)];
  task(a, b, ma, N);
  out_put(out, N, b);
  fclose(input);
  fclose(out);
  return 0;
}
/*
#include <stdio.h>

int main(void) {
  FILE *input = fopen("input.txt", 'r');
  FILE *out = fopen("output.txt", 'w');
  int N = 0;
  int ma=0;
  fscanf(input, "%d", &N);
  char c;
  fscanf(input, "%c", &c);
  int a[N*sizeof(int)];
  int b[N*sizeof(int)];
  for(int i = 0; i < N; i++){
    fscanf(input, "%d", &a[i]);
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
    fprintf(out, "%d ", b[i]);
  }
  fclose(input);
  fclose(out);
  return 0;
}
*/