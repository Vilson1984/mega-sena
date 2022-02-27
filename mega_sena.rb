puts "Afinal a vida é regida por sorte ou destino?"
puts "Se for regida por sorte, quanto mais apostas vc fizer, mais chances terá de ganhar."
puts "Se for regida por destino, um jogo será o suficiente para acontecer o que já está escrito para aconter"
puts "Vamos testar? ..."

puts "escolha um número"

aposta = Array.new

6.times do numero_aposta = gets.chomp
aposta << numero_aposta
end



aux = [0]

premiado = Array.new

6.times do |sorteio| 
 premiado << (1..10).to_a.sample
end
 p premiado

 if premiado[aux] == premiado[aux]
    p "numero repetido"
 end
#fim = false