# Danilo é o fundador do Torne-se um Programador.
# Ele precisa calcular a satisfação de seus alunos.
# Faça um programa que calcule o NPs do seu negócio.

notas = []
em_aula = true
while em_aula do
    puts "Olá aluno do Torne-se um programador poderia por gentileza avaliar nossa plataforma atribuindo uma nota de 1 a 5? "
    nota = gets.to_f
    if notas.length > 0 && nota == -1
        break 
    elsif notas.length == 0 && nota == -1
        puts "Por gentileza  atribuir pelo menos uma nota de 1 a 5"  
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
  puts "O NPS da plataforma é de : #{(notas.sum / notas.length)}"
