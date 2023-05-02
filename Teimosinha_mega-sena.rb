numero_de_apostas = 0

# APOSTA DOS NÚMEROS
aposta = []
puts "Imagine que esse é um JOGO TEIMOSINHA da Mega-Sena (ou seja, a sua APOSTA será sempre dos mesmos números)"
puts "A sua APOSTA será de: 3 números, diferentes entre si, de 1 a 10 e"
puts "O BILHETE PREMIADO será de 3 números, também diferentes entre si e de 1 a 10."
puts "Você ganha quando a sua APOSTA for dos mesmos números do BILHETE PREMIADO"
puts "Faça sua aposta..."
3.times do 
  num = gets.to_i
  aposta << num
end

puts "O seu bilhete é #{aposta.sort}"
puts "Isso pode demorar alguns minutos... espere e veja o quanto vc gastaria pra ganhar na Mega-Sena, jogando a 'Teimosinha' "

# SORTEIO DOS NÚMEROS
loop do
  numero_de_apostas += 1 
  n_disponivel = (1..10).to_a
  bilhete_premiado = n_disponivel.sort.sample(3)
  puts "Os números sorteados foram #{bilhete_premiado.sort}" 

  if aposta.sort == bilhete_premiado.sort
    puts "O valor de cada bilhete é de R$5,00."
    puts "O bilhete premiado foi #{bilhete_premiado.sort}"
    break
  end
end

puts "Vc teria sido sorteado no #{numero_de_apostas}º jogo e teria gasto #{5 * numero_de_apostas},00 reais para ganhar"
