programa
{
	
	funcao inicio()
	{
	//Declaração de variaveis
	inteiro opcao, agenciaCorrente, numContaCorrente, digitoVerificador
	real valor, saldoCorrente = 0, depositoInicial, saldoPoupanca = 0
	cadeia nomeTitular
	 //Inicio do programa
	escreva("BANCO ETE, SEJA BEM VINDO!")
	escreva(" \n------------------")
	//Pede informações do titular e da conta corrente
	escreva("\n Digite o nome do titular da conta corrente: ")
     leia(nomeTitular)
     escreva("\n Digite o número da agência da conta corrente: ")
     leia(agenciaCorrente)
     escreva("\n Digite o número da conta corrente: ")
     leia(numContaCorrente)
     escreva("\n Digite o dígito verificador da conta corrente: ")
     leia(digitoVerificador)
     // Verifica se deseja realizar um depósito inicial
     escreva("\n Deseja realizar um depósito inicial na conta corrente? \n (1-sim / 2-não): ")
     leia(opcao)

     se(opcao == 1){
     	 escreva("\n Digite o valor do depósito inicial: ")
     leia(depositoInicial)
     escreva("--------------------------------------")
     saldoCorrente = depositoInicial
     }
     // Preenche informações da conta poupança
     inteiro numContaPoupanca, digitoVerificadorPoupanca, agenciaPoupanca
     cadeia nomeTitularPoupanca
     //Vetor para armazenar informações da conta poupança
     cadeia contaPoupanca[5]
     contaPoupanca[0] = "Conta poupança:"
     contaPoupanca[1] = "Titular: " + nomeTitular
     contaPoupanca[2] = "Agência: " + agenciaCorrente
     contaPoupanca[3] = "Conta: " + (numContaCorrente + 1) + "-" + (digitoVerificador + 1)
     contaPoupanca[4] = "Saldo: R$" + saldoPoupanca
     escreva("\n Conta poupança criada automaticamente!")
     escreva("\n ------------------------------------")
     cadeia contaCorrente[5]
     contaCorrente[0] = "Conta corrente:"
     contaCorrente[1] = "Titular: " + nomeTitular
     contaCorrente[2] = "Agência: " + agenciaCorrente
     contaCorrente[3] = "Conta: " + numContaCorrente + "-" + digitoVerificador
     contaCorrente[4] = "Saldo: R$" + saldoCorrente
     escreva("\n" + contaCorrente[0])
     escreva("\n \t"+  contaCorrente[1])
     escreva("\n \t " + contaCorrente[2])
     escreva("\n \t" + contaCorrente[3])
     escreva("\n \t"+ contaCorrente[4])
     escreva("\n" + contaPoupanca[0])
     escreva("\n \t"+contaPoupanca[1])
     escreva("\n \t"+contaPoupanca[2])
     escreva("\n \t"+contaPoupanca[3])
     escreva("\n \t"+contaPoupanca[4])

       // Loop principal do programa e Menu de opções
       logico opcoes = verdadeiro
       faca {
       	inteiro opcao2
       	escreva("\n \t MENU DE OPÇÕES:")
          escreva("\n 1 - Consultar saldo da conta corrente")
          escreva("\n 2 - Realizar depósito na conta corrente")
          escreva("\n 3 - Realizar saque da conta corrente")
          escreva("\n 4 - Consultar saldo da conta poupança")
          escreva("\n 5 - Fazer aplicação na conta poupança")
          escreva("\n 6 - Resgatar da conta poupança")
          escreva("\n 7 - Exibir informações da conta poupança")
          escreva("\n 0 - Sair")
          escreva("\n \t Selecione:")
          leia(opcao2) 
   // Verifica a opção selecionada
   escolha(opcao2){
   	    caso 1:
         escreva("\n Saldo da conta corrente: R$ ", saldoCorrente)
         pare
         
          caso 2:
         escreva("\n Digite o valor do depósito: ")
         leia(valor)
         saldoCorrente = saldoCorrente + valor
         escreva("\n Depósito realizado com sucesso na conta corrente!")
         pare
         
         caso 3:
         escreva("\n Digite o valor do saque: ")
         leia(valor)
         
         se (valor <= saldoCorrente){
         	saldoCorrente = saldoCorrente - valor
          escreva("\n Saque realizado com sucesso na conta corrente!")
         
         	
         }senao
            escreva("\n Saldo insuficiente na conta corrente para realizar o saque.")
            pare
            caso 4:
         escreva("\n Saldo da conta poupança: R$ ", saldoPoupanca)
         pare
         
         caso 5:
         escreva("\n Digite o valor do aplicação na conta poupança: ")
         leia(valor)
         saldoPoupanca = saldoPoupanca + valor
         escreva("\n Aplicação realizada com sucesso na conta poupança!")
         pare
         caso 6:
         escreva("\n Digite o valor de resgate na conta poupança: ")
         leia(valor)
         
          se (valor <= saldoPoupanca){
          	saldoPoupanca = saldoPoupanca - valor
            escreva("\n Resgate realizado com sucesso na conta poupança!")
          }senao
          escreva("\n Saldo insuficiente na conta poupança.")
          pare
         
        
         
         caso 7:
         // Exibe as informações da conta poupança
          escreva("\n" +contaPoupanca[0])
          escreva("\n \t"+contaPoupanca[1])
          escreva("\n \t"+contaPoupanca[2])
        	escreva("\n \t"+contaPoupanca[3])
          escreva("\n \t Saldo: R$" + saldoPoupanca)
         
         pare
         // Adicione aqui as informações que deseja exibir sobre a conta poupança
          caso 0:
          opcoes = falso
          pare
         
          
   }
   }  enquanto(opcoes == verdadeiro)
   //Comentário final ao sair do banco.
    escreva("\n OBRIGADO POR UTILIZAR O NOSSO BANCO!" + "\n"+ nomeTitular+"!"+"VOLTE SEMPRE!")
      
       }
       
   
       	
       
     
	}
		
	

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4699; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */