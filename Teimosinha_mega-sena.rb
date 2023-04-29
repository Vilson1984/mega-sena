numero_de_apostas = 0
aposta_ganhadora = nil

aposta = Array.new 
p "Faça sua aposta"
3.times do num = gets.to_i
  aposta << num
end
aposta

p "O seu bilhete é #{aposta}"

loop do

  until aposta == aposta_ganhadora
    numero_de_apostas += 1 
    n_disponivel = (1..6).to_a
    aposta_ganhadora = n_disponivel.sample(3)
    p "Os números sorteados foram #{aposta_ganhadora}"  
  end

  if aposta.sort == aposta_ganhadora.sort
    p "O bilhete premiado foi #{aposta_ganhadora}"
    break
  else
    p "vc perdeu" 
    p "O bilhete premiado foi #{aposta_ganhadora}"
  end
end

p "Vc teria sido sorteado na #{numero_de_apostas}º vez"
