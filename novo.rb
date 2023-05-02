class MegaTeimosinha
   def f_aposta   
     @aposta = []
 
     p "Faça seu jogo"
     3.times do 
       num = gets.to_i
       @aposta << num
     end
     
     return @aposta.sort
   end   

    def f_sorteio
      @bilhete_premiado = []

      3.times do
        num_disponiveis = (1..6).to_a
        @bilhete_premiado << num_disponiveis.sample
      end

      return @bilhete_premiado.sort
    
    
    end
    
    def compara_jogos
      loop do
        until @aposta == @bilhete_premiado
          f_sorteio
        end        

        if @aposta == @bilhete_premiado
          p "Parabéns o seu bilhete #{@bilhete_premiado} foi sorteado"
          break
        else
          
        end
      end
      
    end
  end

    
jogo = MegaTeimosinha.new
#aposta = jogo.f_aposta
#p "Sua aposta foi #{aposta.sort}"
#bilhete_premiado = jogo.f_sorteio
#p "Os números premiados foram #{bilhete_premiado}"
compara = jogo.compara_jogos