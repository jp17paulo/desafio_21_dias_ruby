# Enquanto estamos na aula, o Danilo estará explicando
# lógica de programação e desenvolvimento pessoal, aluno você concordo com isso?


# notas = []
# em_aula = true
# while em_aula do
#     puts "Enquanto estamos na aula, o Danilo estará explicando lógica de programação e desenvolvimento pessoal, aluno qual a nota de (0..5) que você daria para a aula de hoje?"
#     notas << gets.to_f
#     puts "A aula já acabou? (S,N)"
#     em_aula = gets.upcase.strip != "S"
# end


# puts "O seu NPS é de : #{(notas.sum / notas.length)}"


notas = []
em_aula = true
while em_aula do
    system "clear"
    puts "Qual nota você daria para esse atendimento de (0..10) ?"
    nota = gets.to_f
    break if nota == -1
    notas << nota
end


puts "O NPS da plataforma é de : #{(notas.sum / notas.length)}"