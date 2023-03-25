# Danilo é o fundador do Torne-se um Programador.
# Ele precisa calcular a satisfação de seus alunos.
# Faça um programa que calcule o NPs do seu negócio.

system 'clear'
require 'byebug'
require 'active_support/time'

notas = []
em_aula = true
data_encerramento = Time.now + 20.seconds

# puts data_encerramento
# puts Time.now 

# while em_aula do
while Time.now < data_encerramento do
    puts "Olá aluno do Torne-se um programador poderia por gentileza avaliar nossa plataforma atribuindo uma nota de 1 a 5? "
    nota = gets.to_f
    if notas.length > 0 && nota == -1
        break 
    elsif nota > 5
        puts "Por gentileza digitar uma nota de 1 a 5"
        sleep (5)
        system "clear"
    elsif notas.length == 0 && nota == -1
        puts "Por gentileza digitar pelo menos uma nota"  
        sleep (5)
        system "clear"
    elsif (1..5).include?(nota) # validando o range
      notas << nota
      system "clear"
    else
      puts "A nota atribuida não pode ser processada. Por favor atribuir uma nota de 1 a 5"
      system "clear"

    end
end
  puts "As notas foram armazenadas com sucesso !"
  sleep (2)

  puts "=========================================="
  puts "==========RESULTADO DA AVALIAÇÃO=========="
  puts "=========================================="
  puts "Quantidade de avaliações: #{notas.length}" 
  puts "Notas obtidas: #{notas}"
  puts "O NPS da plataforma é de : #{(notas.sum / notas.length)}"
