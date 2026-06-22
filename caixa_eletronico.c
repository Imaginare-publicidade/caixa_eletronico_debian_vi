#include <stdio.h>

int main()
{
    float saldo = 1000.00;
    float emprestimo = 0.00;
    float valor;
    int opcao = -1;

    while (opcao != 0)
    {
        printf("\n===== CAIXA ELETRONICO =====\n");
        printf("1 - Verificar saldo\n");
        printf("2 - Depositar valor\n");
        printf("3 - Sacar valor\n");
        printf("4 - Pedir emprestimo\n");
        printf("5 - Pagar emprestimo\n");
        printf("6 - Consultar emprestimo\n");
        printf("0 - Sair\n");
        printf("Escolha uma opcao: ");
        scanf("%d", &opcao);

        switch (opcao)
        {
            case 1:
                printf("Saldo atual: R$%.2f\n", saldo);
                break;

            case 2:
                printf("Digite o valor do deposito: R$");
                scanf("%f", &valor);

                if (valor > 0)
                {
                    saldo = saldo + valor;
                    printf("Deposito realizado.\n");
                    printf("Saldo atual: R$%.2f\n", saldo);
                }
                else
                {
                    printf("Valor invalido.\n");
                }
                break;

            case 3:
                printf("Digite o valor do saque: R$");
                scanf("%f", &valor);

                if (valor <= 0)
                {
                    printf("Valor invalido.\n");
                }
                else if (valor > saldo)
                {
                    printf("Saldo insuficiente.\n");
                }
                else
                {
                    saldo = saldo - valor;
                    printf("Saque realizado.\n");
                    printf("Saldo atual: R$%.2f\n", saldo);
                }
                break;

            case 4:
                printf("Digite o valor do emprestimo: R$");
                scanf("%f", &valor);

                if (valor > 0)
                {
                    saldo = saldo + valor;
                    emprestimo = emprestimo + valor;
                    printf("Emprestimo aprovado.\n");
                    printf("Saldo atual: R$%.2f\n", saldo);
                    printf("Emprestimo em aberto: R$%.2f\n", emprestimo);
                }
                else
                {
                    printf("Valor invalido.\n");
                }
                break;

            case 5:
                if (emprestimo <= 0)
                {
                    printf("Nao existe emprestimo em aberto.\n");
                }
                else
                {
                    printf("Digite o valor para pagar: R$");
                    scanf("%f", &valor);

                    if (valor <= 0)
                    {
                        printf("Valor invalido.\n");
                    }
                    else if (valor > saldo)
                    {
                        printf("Saldo insuficiente.\n");
                    }
                    else if (valor > emprestimo)
                    {
                        printf("Valor maior que o emprestimo em aberto.\n");
                    }
                    else
                    {
                        saldo = saldo - valor;
                        emprestimo = emprestimo - valor;
                        printf("Pagamento realizado.\n");
                        printf("Saldo atual: R$%.2f\n", saldo);
                        printf("Emprestimo em aberto: R$%.2f\n", emprestimo);
                    }
                }
                break;

            case 6:
                printf("Emprestimo em aberto: R$%.2f\n", emprestimo);
                break;

            case 0:
                printf("Encerrando o sistema.\n");
                break;

            default:
                printf("Opcao invalida.\n");
                break;
        }
    }

    return 0;
}
