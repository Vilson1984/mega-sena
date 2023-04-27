numero_de_apostas = 0
aposta_ganhadora = nil 

loop do
numero_de_apostas += 1 

aposta = Array.new 

p "Faça sua aposta"
4.times do num = gets.to_i
    aposta << num
end
p "O seu bilhete é #{aposta}"


n_disponivel = (1..6).to_a
n_sorteado = n_disponivel.sample(4)


until aposta == aposta_ganhadora do
    n_disponivel = (1..6).to_a
    aposta_ganhadora = n_disponivel.sample(4)
end

if aposta == n_sorteado
    p "O bilhete premiado foi #{n_sorteado}"
    p "Vc teria sido sorteado na #{numero_de_apostas}º vez"
    break
else
    p "vc perdeu" 
    p "O bilhete premiado foi #{n_sorteado}"
end
end