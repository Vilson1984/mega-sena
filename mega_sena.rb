p "Escolha os números de sua aposta"

class Jogo
   
      
   
   aposta = Array.new
   bilhete_premiado = Array.new

   2.times do num = gets.to_i
      aposta << num 
   end


   def sorteio

   2.times do numero_sorteado = rand 1..2.to_i
   bilhete_premiado << numero_sorteado
   end
   #contador = 1

   #until aposta == sorteio
    #  sorteio
    #  contador =+ 1
   #end

   p "numeros da aposta: #{bilhete_premiado}}"
   p "numeros do sorteio:#{bilhete_premiado}"
   #p contador

   end

end