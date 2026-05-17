programa {
  funcao inicio() {
    real requisicoes[10], maior_t = 0, t_ocioso = 0

    para (inteiro i=0; i<10; i++){
      escreva("requisições no segundo ", i+1, ": ")
      leia(requisicoes[i])

      se(requisicoes[i] > maior_t){
        maior_t = requisicoes[i]
      } senao se(requisicoes[i] == 0) {
        t_ocioso++
      }
    }

    escreva("\n")
    escreva("o pico de trafego foi: ", maior_t, "\n")
    escreva("o tempo ocioso foi: ", t_ocioso, "\n")

    se(t_ocioso >= 5){
      escreva("\nsistema instavel! ")
    }
  }
}
