#include <stdio.h>
#include <stdlib.h>

int main()
{
    int N;
    scanf("%d", &N);
    int *arr = (int *) malloc(N * sizeof(int));
    for (int i = 0; i < N; ++i)
    {
        scanf("%d", &arr[i]);
    }

    int *rev = (int *) malloc(N * sizeof(int));
    int j = 0;
    for (int i = N - 1; i >= 0; i--)
    {
        rev[j] = arr[i];
        j++;
    }

    for (int i = 0; i < N; ++i)
    {
        printf("%d ", rev[i]);
    }
    free(arr);
    free(rev);
    return 0;
}
