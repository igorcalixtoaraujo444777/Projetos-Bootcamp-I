programa {
  funcao inicio() {
    inteiro tabuleiro[8][8]
    para (inteiro y = 0; y<8; y++){
      para (inteiro x = 0; x<8; x++){
        se ((x+y)%2 == 0){
          tabuleiro[y][x] = 0
        } senao {
          tabuleiro[y][x] = 1
        }
      }
    }
    
    para (inteiro y = 0; y<8; y++){
      para (inteiro x = 0; x<4; x++){
        escreva(tabuleiro[y][x], " ")
      }
      escreva("\n")
    }
  }
}
