programa {
  inclua biblioteca Util --> u

  funcao inicio() {
    cadeia tabuleiro[4][4]
    cadeia px, py
    inteiro barcos[3][3] = {
      {u.sorteia(0, 1), u.sorteia(0, 1)},
      {u.sorteia(2, 3), u.sorteia(0, 1)},
      {u.sorteia(0, 3), u.sorteia(2, 3)}
    }
  
  
    para (inteiro y=0; y<4; y++){
      para (inteiro x=0; x<4; x++){
        se (
          (x == barcos[0][0] e y == barcos[0][1]) ou
          (x == barcos[1][0] e y == barcos[1][1]) ou
          (x == barcos[2][0] e y == barcos[2][1])){
          tabuleiro[y][x] = "B"
        } senao {
          tabuleiro[y][x] = "~"
        }
      }
    }

    escreva("digite uma largura: ")
    leia(px)
    
    escreva("digite uma altura: ")
    leia(py)
    escreva("\n")

    px--
    py--
    se (
      (px == barcos[0][0] e py == barcos[0][1]) ou
      (px == barcos[1][0] e py == barcos[1][1]) ou
      (px == barcos[2][0] e py == barcos[2][1])){
        escreva("voce acertou um barco!\n\n")
    } senao {
        escreva("voce nao acertou nenhum barco!\n\n")
    }

    para (inteiro y=0; y<4; y++){
      para (inteiro x=0; x<4; x++){
        escreva(tabuleiro[y][x])
      }
      escreva("\n")
    }

  }
}
