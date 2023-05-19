class MegaTeimosinha
  # TEXTO EXPLICATIVO DO JOGO
  puts "Olá jogador!"

  puts "Considere a sua APOSTA 3 números distintos entre si, dentre 1 a 10."
  puts "O SORTEIO também será de 3 números distintos entre si, dentre 1 a 10."
  puts "Por favor, faça a sua APOSTA!"

  # FUNÇÃO CONTADORA DA QUANTIDADE DE JOGADAS
  def initialize
    @contador = 0
  end

  # FUNÇÃO APOSTA DOS NÚMEROS DO JOGADOR
  def f_aposta   
    @aposta = []


    3.times do 
      num = gets.to_i
      @aposta << num
    end
    p "Sua aposta é #{@aposta.sort}"
  end

  # FUNÇÃO SORTEIO DOS NÚMEROS PREMIADOS
  def f_sorteio 
    
    @bilhete_premiado = []

    3.times do
      num_disponiveis = (1..10).to_a
      @bilhete_premiado = num_disponiveis.sort.sample(3)
    end
    p "Bilhete premiado é #{@bilhete_premiado.sort}"

  end

  #FUNÇÃO COMPARA BILHETE PREMIADO ATÉ QUE SEJA IGUAL A APOSTA DO JOGADOR
  def f_compara_jogo
    
    if @aposta != @bilhete_premiado
      p "vc perdeu"
      
      loop do
        @contador += 1 
        f_sorteio

        if @aposta.sort == @bilhete_premiado.sort
          puts "O bilhete premiado foi #{@bilhete_premiado.sort}."
          puts "Vc teria acertado na #{@contador}ª jogada."
          puts "Considerando que o valor do bilhete é R$5,00, vc teria gasto #{@contador * 5},00 reais."
          break
        end
      end
    end
  end
end

    
jogo = MegaTeimosinha.new
aposta = jogo.f_aposta
compara_jogo = jogo.f_compara_jogo

#MÉTODO AGUARDA AÇÃO DO USUÁRIO PARA QUE SEJA FECHADO O PROGRAMA
gets 