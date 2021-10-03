#include <stdio.h>
#include <stdlib.h>
#include <string.h>
/*Função para fazer a leitura das informações da arena, ela recebe por
parametro as variaveis e o arquivo de entrada, apos isso é criada uma
variavel para armazenar as informações que não são uteis para o programa
e a leitura é feita utilizando o fscanf*/
void leitura_parametro(char *nomeInstancia, int *orcamento, int *saida, char *dimensao, FILE *entrada)
{
    char lixo[30];
    fscanf(entrada, "%s", lixo);
    fscanf(entrada, "%s", nomeInstancia);
    printf("%s\n", nomeInstancia);
    fscanf(entrada, "%s", lixo);
    fscanf(entrada, "%d", orcamento);
    printf("%d\n", *orcamento);
    fscanf(entrada, "%s", lixo);
    fscanf(entrada, "%d", saida);
    printf("%d\n", *saida);
    fscanf(entrada, "%s", lixo);
    fscanf(entrada, "%s", dimensao);
}
/*Função para alocar os vetores que serão utilizados para
coluna da matriz da arena nela é recebido quantidade de linhas,
colunas e a propria matriz e aloca os vetores com o tamanho das
colunas em cada linha do vertor que armazena os endereços*/
void aloca_arena(char **arena, int coluna, int linha)
{
    int i;
    /*Pedi memoria ao sistema*/
    for (i = 0; i < linha; i++)
    {
        arena[i] = (char *)malloc(coluna * sizeof(char));
        if (arena[i] == NULL)
        {
            printf("Memoria insuficiente.\n");
            exit(1);
        }
    }
}
/*Função para liberar a memoria alocada para matriz
arena utilizando a função arena*/
void libera_arena(char **Arena,int linha)
{
    int y;
    for (y = 0; y < linha; y++)
    {
        free(Arena[y]);
    }
    free(Arena);
}
/*Função para a leitura das linhas da arena
de dentro do arquivo usando o fscanf*/
void leitura_arena(char **Arena, FILE *entrada, int linha)
{
    int y;

    for (y = 0; y < linha; y++)
    {
        fscanf(entrada, " %[^\n]", Arena[y]);
    }
}
/*Função para imprimir a arena*/
void mostrar_arena(char **arena, int linha)
{
    int i;
    for (i = 0; i < linha; i++)
    {
        printf("%s\n", arena[i]);
    }
}
/*Nessa função é utilizado o strtok para separar a quantidade
de linhas e colunas essa função permite que escolhemos caracteres
chaves para que haja a separação das duas partes da string
alem disso também foi utilizado o atoi*/
void separa_dimencao(int *linha, int *coluna, char *dimencao)
{
    char *pt;
    int cont = 0;
    pt = strtok(dimencao, "xX ");
    while (pt != NULL)
    {
        if (cont == 0)
        {
            *linha = atoi(pt);
        }
        else
        {
            *coluna = atoi(pt);
        }

        pt = strtok(NULL, "xX ");
        cont = cont + 1;
    }
}
int main(int argc, char *argv[])
{
    char **arena, nome_instancia[50], dimensao[25];
    int saida, orcamento, linha, coluna;
    FILE *entrada;
    if (argc  == 2)
    {
        entrada = fopen(argv[1], "r");
        leitura_parametro(nome_instancia, &orcamento, &saida, dimensao, entrada);
        separa_dimencao(&linha,&coluna,dimensao);
        /*Alocação das linhas da matriz*/
        arena = (char **)malloc(linha * sizeof(char *));
        /*Verificação da alocação*/
        if (arena != NULL)
        {
            aloca_arena(arena, coluna, linha);
            leitura_arena(arena, entrada, linha);
            fclose(entrada);
            mostrar_arena(arena, linha);
        }
        else
        {
            printf("Memoria insuficiente.\n");
            exit(1);
        }
        /*Liberaçao do espaço alocado*/
        libera_arena(arena,linha);
    }
    else
    {
        printf("Exemplo de entrada .\\programa arquivo.dat");
    }

    return 0;
}