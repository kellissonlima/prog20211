Algoritmo "semnome"
// Disciplina   : [Fundamentos de Programa��o e
//Desenvolvimento de Projetos aplicados � Neuroengenharia]
// Professor   : Andr� Felipe Oliveira de Azevedo Dantas
// Descri��o   : Descreve que tenho de casa at� o IIN-ELS
// Autor(a)    : Kellisson Kayon�rio de Lima
// Data atual  : 20/08/2021
//
//
Var
// Se��o de Declara��es das vari�veis 
 nomePaciente, modoSuspensaoPeso1, condicaoParada, condicaoParada2: caracter
 velocidadeOrtese, pesoPaciente, velocidadeEsteira: real
 orteseAcoplada: logico
 padraoMarcha, estadoEsteira: logico
 pacienteSuspenso, estadoOrtese, estadoZeroG, sinalLuminoso: logico
 alturaSolo, coleteVestido,bora,opcao, modoSuspensaoPeso2, modoZeroEstado, modoZeroEstado2 , subirDescer, op2: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
modoSuspensaoPeso1 <- "Desabilitado";
alturaSolo <- 0;
repita
      limpatela
      escreval("*----------------------------------------------------*")
      escreval("***---- SIMULA MARCHA NO ZeroG e Lokomat ----**")
      escreval("")
      escreval("| U U | /                       ")
      escreval("| \-/ |         Simbora         ")
      escreval("")
      escreval("")
      escreval("")
      escreval("[+] Informe o nome do paciente: ")
      leia(nomePaciente)
      se nomePaciente = "" entao
      escreval("[!] Informe preencha o nome, � obrigat�rio")
      fimse
ate nomePaciente <> "";
      
repita
      limpatela
      escreval("*----------------------------------------------------*")
      escreval("***---- SIMULA MARCHA NO ZeroG e Lokomat ----**")
      escreval("")
      escreval("| U U | /                       ")
      escreval("| \-/ |         Simbora         ")
      escreval("")
      escreval("")
      escreval("")
      escreval("[+] Informe o peso do paciente: ")
      leia(pesoPaciente)

      se (pesoPaciente <= 0) entao
      escreval("[!] Informe um valor para o peso acima de zero")
      fimse

      se (pesoPaciente > 136) entao
      pesoPaciente <- 0;
      escreval("[!] O paciente precisa ter um peso inferior a 137")
      fimse
ate (pesoPaciente <> 0) e (pesoPaciente > 0) ;

repita
      limpatela
      escreval("*----------------------------------------------------*")
      escreval("***---- SIMULA MARCHA NO ZeroG e Lokomat ----**")
      escreval("")
      escreval("[ O_0 ]  --->  [ ? ]")
      escreval("")
      escreval("")
      escreval("")
      escreval("[ ? ] - Paciente est� vestido com o colete? ")
      escreval("")
      escreval("[ SIM ] --> 1")
      escreval("[ N�O ] --> 0")
      leia(coleteVestido)
      limpatela
      se coleteVestido = 1 entao
         escreval("")
         escreval("")
         escreval("[ o_- ]  --->  [ �timo, vamos para a pr�xima etapa! ]")
         escreval("")
         escreval("")
         escreval("[ o_- ]  --->  [ ZeroG ligado !!! ON ]")
         estadoZeroG <- VERDADEIRO;
      fimse
      
      se coleteVestido = 0 entao
         escreval("")
         escreval("")
         escreval("[ -_- ]  --->  [ Xiii, fa�a isso para prosseguirmos! ]")
         estadoZeroG <- FALSO;
      fimse

ate (estadoZeroG = VERDADEIRO)

repita

  limpatela
  escreval("*------------------------------------------------------------------------------------------------------*")
  escreval("*----------------------------------SIMULA��O------------------------------------------------------------*")
  escreval("")
  escreval("                               _______________________      ")
  escreval("                              | Painel de Informa��es |     ")
  escreval("                              |_______________________|     ")
  escreval("")
  escreval("* Nome do Paciente ", "[[ ",nomePaciente," ]]      ���  * Peso do Paciente ", "[[ ",pesoPaciente," ]]" )
  escreval("* Modo Zero G ", "[[ ",modoSuspensaoPeso1," ]]     ���  * Zero G Ativo ? ", "[[ ", estadoZeroG, " ]]" )
  escreval("* Lokomat est� ligada ", "[[ ", estadoOrtese, " ]]  ���  * Altura ZeroG ", "[[ ", alturaSolo, " cm ]]")
  escreval("* Paciente Suspenso ", "[[ ",pacienteSuspenso , " ]]  ���  * �rtese Acoplada ", "[[ ", orteseAcoplada, "]]")
  escreval("")
  escreval("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---*|*---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
  escreval("")
  escreval("----- MENU -----")
  escreval("")
  escreval(" [ 1 ] - Modos do ZERO G ")
  escreval(" [ 2 ] - Descer ou Subir | ZERO G ")
  escreval(" [ 3 ] - USAR O LOKOMAT ")
  escreval(" [ 4 ] - SAIR ")
  leia(opcao)
  escolha opcao
    caso 1
      repita
            se (estadoZeroG = VERDADEIRO) entao
            limpatela
            escreval("*----------------------------------------------------*")
            escreval("***---- SIMULA MARCHA NO ZeroG e Lokomat ----**")
            escreval("")
            escreval("[ 0_0 ]  --->  [ Qual o modo que deseja usar o Zero G ?]")
            escreval("")
            escreval("")
            escreval("")
            escreval("[ Din�mico ] --> 1")
            escreval("[ Est�tico ] --> 0")
            leia(modoSuspensaoPeso2)
                se (modoSuspensaoPeso2 = 1) entao

                  escreval(" [!] Voc� escolheu o modo ", modoSuspensaoPeso1)

                  se (pesoPaciente < 69) entao
                     modoZeroEstado <- 1;
                     modoSuspensaoPeso1 <- "Din�mico";
                     escreval(" [ MODO DIN�MICO HABILITADO ]")
                  fimse

                  se (pesoPaciente > 68) entao
                     escreval ("[ MODO DIN�MICO N�O HABILITADO - PESO N�O SUPORTADO]")
                     modoZeroEstado <- 0;
                  fimse
                fimse
                
                se modoSuspensaoPeso2 = 0 entao
                   modoSuspensaoPeso1 <- "Est�tico";
                   modoZeroEstado <- 1;
                fimse
                se (modoSuspensaoPeso2 <> 1) e (modoSuspensaoPeso2 <> 0) entao
                   escreval("Por favor, insira uma das op��es descrita acima. ")
                   modoZeroEstado <- 0;
                fimse
            fimse
      ate modoZeroEstado = 1;
            
    caso 2
      repita
            se (estadoZeroG = VERDADEIRO) entao     //1
            limpatela
            escreval("*----------------------------------------------------*")
            escreval("***---- SIMULA MARCHA NO ZeroG e Lokomat ----**")
            escreval("")
            escreval("       [ ^ _ ^ ]  --->  [ SUBIR OU DESCER ?]")
            escreval("")
            escreval("* Altura em rela��o ao Solo ", "[ ", alturaSolo, " - cm ]")
            escreval("")
            escreval("")
            escreval("[ UP ] --> 1")
            escreval("[ DOWN ] --> 0")
            escreval("")
            escreval("")
            escreval("")
            escreval("[ SAIR ] --> 3")
            escreva("")
            leia(subirDescer)
                se (subirDescer = 1) entao   //1.2 anin

                limpatela
                escreval("[ ! ] PARA PARAR APERTE A LETRA - P OU QUALQUER LETRA PRA SUBIR")
                  repita
                        //representa 1 cent�metro de altura em rela��o ao solo
                        alturaSolo <- alturaSolo + 1;
                        escreval ("")
                        escreval ("        [ up ]        ")
                        escreval ("           ^          ")
                        escreval ("           ^          ")
                        escreval ("")
                        leia(condicaoParada)

                  ate  condicaoParada = "p"
                escreval("[ * ] Subida Interrompida !")
                se alturaSolo > 0 entao
                   pacienteSuspenso <- VERDADEIRO;
                fimse
                fimse

                se (subirDescer = 0) entao  //2
                   se (alturaSolo = 0) entao
                      escreval(" [ ! ] O paciente j� encontra no Solo")
                      pacienteSuspenso <- FALSO;
                   senao
                      limpatela
                       escreval("[ ! ] PARA PARAR APERTE A LETRA - P OU QUALQUER LETRA PRA SUBIR")
                           repita
                                 alturaSolo <- alturaSolo - 1;
                                 se (alturaSolo = 0) ou (alturaSolo < 0) entao
                                    alturaSolo <- 0;

                                    escreval(" [ ! ] Descida chegou ao limite ")
                                    condicaoParada2 <- "p"
                                    pacienteSuspenso <- FALSO;
                                  senao

                                    escreval ("                    ")
                                    escreval ("           \/        ")
                                    escreval ("        [ down ]         ")
                                    escreval ("")
                                    leia(condicaoParada2)
                                    pacienteSuspenso <- VERDADEIRO;
                                  fimse
                           ate (condicaoParada2 = "p")
                        escreval("[ * ] Descida Interrompida !")
                      fimse
                    fimse


                
                se (subirDescer <> 1) e (subirDescer <> 0) e (subirDescer <> 3) entao
                escreval("Por favor, insira uma das op��es descrita acima. ")
                modoZeroEstado2 <- 0;
                fimse
                se (subirDescer = 3) entao
                modoZeroEstado2 <- 1;
                escreval("                        ^")
                escreval("[ # ] Voltando ao Menu  |")
                fimse
        fimse
      ate modoZeroEstado2 = 1;
    caso 3
    repita
            se (estadoZeroG = VERDADEIRO) e (pacienteSuspenso = VERDADEIRO) entao
            limpatela
            escreval("*----------------------------------------------------*")
            escreval("***---- SIMULA MARCHA NO ZeroG e Lokomat ----**")
            escreval("")
            escreval("[ 0_0 ]  --->  [ Acoplou a �rtese na ")
            escreval("                                       na regi�o da cintura ")
            escreval("                                                          do paciente")
            escreval("                                                                      e membros inferiores?")
            escreval("")
            escreval("")
            escreval("")
            escreval("[ SIM ] --> 1")
            escreval("[ N�O ] --> 0")
            leia(op2)
                se (op2 = 1) e (alturaSolo > 0) entao
                  orteseAcoplada <- VERDADEIRO
                  bora <- 1;
                  repita
                        escreval("   |    ")
                        alturaSolo <- alturaSolo - 1;
                  ate alturaSolo = 0
                  escreval("[ ^_^ ]  --->  [ P�s no Ch�o !]")
                  escreval("  | |  ")
                  escreval("__|_|__")
                  pacienteSuspenso <- FALSO;
                  estadoOrtese <- VERDADEIRO;
                  escreval("")
                  escreval("")
                  escreval("[ * ] Equipamento de �rtese Ligado")
                 senao
                  escreval(" [ ! ] POR FAVOR, AJUSTE O LOKOMAT AO CORPO DO PACIENTE!")
                  orteseAcoplada <- FALSO
                 bora <- 0;
               fimse
          fimse
      ate  bora = 1;

  fimescolha
ate opcao=4





      
      
      

      

Fimalgoritmo