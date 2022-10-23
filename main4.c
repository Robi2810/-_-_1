#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
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
void out_put_2(int N, int *b, int *a){
  printf("arr A:");
  for(int i = 0; i < N; i++){
    printf("%d ", a[i]);
  }
  printf("\n");
  printf("arr B:");
  for(int i = 0; i < N; i++){
    printf("%d ", b[i]);
  }
}
void task(int *a, int  *b, int ma, int N){
  for(int j = 0; j < 10000; j++){
    for(int i = 0; i < N; i++){
      if(a[i] < 0){
        b[i] = ma;
      }
      else{
        b[i] = a[i];
      }
    }
  }
}

int rand_ma(int *a, int N){
  int ma = -10000;
  srand(time(NULL));
  for(int i = 0; i < N; i++){
    a[i] = rand() % 1000000000;
    if(a[i] % 2 == 0){
	a[i] = -a[i];
    }
    if(a[i] > ma){
      ma = a[i];
    }
  }
  return ma;
}
int main(int argc, char *argv[]) {
  time_t start, end;
  int ma=0;
  int N = 0;
  if(strcmp(argv[1], "-r") == 0){
    scanf("%d", &N);
    int a[N*sizeof(int)];
    int b[N*sizeof(int)];
    ma = rand_ma(a, N);
    start = time(NULL);
    task(a, b, ma, N);
    end = time(NULL);
    out_put_2(N, b, a);
    printf("\n");
    printf("time: %.4fn", difftime(end, start));
  }
  else{
    FILE *input = fopen(argv[1], "r");
    FILE *out = fopen(argv[2], "w");
    fscanf(input, "%d", &N);
    int ab[N*sizeof(int)];
    int bb[N*sizeof(int)];
    ma = input_max(input, N, ab);
    start = time();
    task(ab, bb, ma, N);
    end = time();
    out_put(out, N, bb);
    fprintf(out, "time: %.4f\n", difftime(end, start));
    fclose(input);
    fclose(out);
  }
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