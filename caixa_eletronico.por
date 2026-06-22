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

                caso 2:
                    escreva("Digite o valor do deposito: R$")
                    leia(valor)

                    se (valor > 0)
                    {
                        saldo = saldo + valor
                        escreva("Deposito realizado.\n")
                        escreva("Saldo atual: R$", saldo, "\n")
                    }
                    senao
                    {
                        escreva("Valor invalido.\n")
                    }
                    pare

                caso 3:
                    escreva("Digite o valor do saque: R$")
                    leia(valor)

                    se (valor <= 0)
                    {
                        escreva("Valor invalido.\n")
                    }
                    senao se (valor > saldo)
                    {
                        escreva("Saldo insuficiente.\n")
                    }
                    senao
                    {
                        saldo = saldo - valor
                        escreva("Saque realizado.\n")
                        escreva("Saldo atual: R$", saldo, "\n")
                    }
                    pare

                caso 4:
                    escreva("Digite o valor do emprestimo: R$")
                    leia(valor)

                    se (valor > 0)
                    {
                        saldo = saldo + valor
                        emprestimo = emprestimo + valor
                        escreva("Emprestimo aprovado.\n")
                        escreva("Saldo atual: R$", saldo, "\n")
                        escreva("Emprestimo em aberto: R$", emprestimo, "\n")
                    }
                    senao
                    {
                        escreva("Valor invalido.\n")
                    }
                    pare

                caso 5:
                    se (emprestimo <= 0)
                    {
                        escreva("Nao existe emprestimo em aberto.\n")
                    }
                    senao
                    {
                        escreva("Digite o valor para pagar: R$")
                        leia(valor)

                        se (valor <= 0)
                        {
                            escreva("Valor invalido.\n")
                        }
                        senao se (valor > saldo)
                        {
                            escreva("Saldo insuficiente.\n")
                        }
                        senao se (valor > emprestimo)
                        {
                            escreva("Valor maior que o emprestimo em aberto.\n")
                        }
                        senao
                        {
                            saldo = saldo - valor
                            emprestimo = emprestimo - valor
                            escreva("Pagamento realizado.\n")
                            escreva("Saldo atual: R$", saldo, "\n")
                            escreva("Emprestimo em aberto: R$", emprestimo, "\n")
                        }
                    }
                    pare

                caso 6:
                    escreva("Emprestimo em aberto: R$", emprestimo, "\n")
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
