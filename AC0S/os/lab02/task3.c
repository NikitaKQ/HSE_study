#include <stdio.h>
#include <stdlib.h>


int main(void)
{
    int n, m;
    scanf("%d", &n);
    scanf("%d", &m);

    int **mat = (int **)malloc(n * sizeof(int*));
    for(int i = 0; i < n; i++) mat[i] = (int *)malloc(m * sizeof(int));

    int **transp = (int **)malloc(m * sizeof(int*));
    for(int i = 0; i < m; i++) transp[i] = (int *)malloc(n * sizeof(int));

    for (int i = 0; i < n; ++i)
    {
        for (int j = 0; j < m; ++j)
        {
            scanf("%d", &mat[i][j]);
        }
    }

    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < m; ++j) {
            transp[j][i] = mat[i][j];
        }
        printf("\n");
    }

    for (int i = 0; i < m; ++i)
    {
        for (int j = 0; j < n; ++j)
        {
            printf("%d ", transp[i][j]);
        }
        printf("\n");
    }

    for (int i = 0; i < n; i++) {
        free(mat[i]);
    }
    free(mat);

    for (int i = 0; i < m; i++) {
        free(transp[i]);
    }
    free(transp);

    return 0;
}