programa
{
    funcao inicio()
    {
        real saldo
        real emprestimo
        real valor
        inteiro opcao

        saldo = 1000.00
        emprestimo = 0.00
        opcao = -1

        enquanto (opcao != 0)
        {
            escreva("\n===== CAIXA ELETRONICO =====\n")
            escreva("1 - Verificar saldo\n")
            escreva("2 - Depositar valor\n")
            escreva("3 - Sacar valor\n")
            escreva("4 - Pedir emprestimo\n")
            escreva("5 - Pagar emprestimo\n")
            escreva("6 - Consultar emprestimo\n")
            escreva("0 - Sair\n")
            escreva("Escolha uma opcao: ")
            leia(opcao)

            escolha (opcao)
            {
                caso 1:
                    escreva("Saldo atual: R$", saldo, "\n")
                    pare

                caso 0:
                    escreva("Encerrando o sistema.\n")
                    pare

                caso contrario:
                    escreva("Opcao invalida.\n")
                    pare
            }
        }
    }
}
