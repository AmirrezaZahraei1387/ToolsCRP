#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <string.h>

#include "functions.h"

int main(int argc, char *argv[])
{
  int *array;
  int max = ;
  int size = 0;

  printf("How big is the array? ");
  scanf("%i", size);
  if (initialize(array, size) != 0)
  {
    printf("initialization error\n");
    exit(1);
  }

  if (findMax(array, size, max) != 0)
  {
    printf("someFunction error\n");
    exit(1);
  }
  printf("The max value in array is: %d\n", max);

  exit(0);
}
