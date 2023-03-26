# Roberto é um diretor de uma escola de música
# ele precisa de um programa que tenha as seguintes opções:
# 1 - Cadastrar aluno (nome, matricula, notas)
# 2 - Cadastrar nota de aluno
# 3 - Relatório das notas em média dos alunos
# 4 - sair
# Faça o programa em app console utilizando loop, condicionais e array

puts "*************************************************"
puts "              Escola de Música                   "
puts "*************************************************"

puts "Sistema de cadastro de alunos. \nPor gentileza escolha uma das opções disponíveis: \n\n"
puts "1 - Cadastrar aluno (nome, matricula, notas)"
puts "2 - Cadastrar nota de aluno"
puts "3 - Relatório das notas em média dos alunos"
puts "4 - sair"


itemSelecionado = gets.to_i
alunos = []
notas = []

# itemSelecionado = gets.to_i

while itemSelecionado.to_i != 4 do

    itemSelecionado = gets.to_i

    case x
        when 1
            puts "Por gentileza digite o nome do aluno"
                nome_aluno = gets.to_s.strip
            system 'clear'
            puts "Por gentileza digite a matrícula do aluno"
                matricula = gets.to_s.strip
            system 'clear'

        when 2
            puts "A maçã custa R$ 6.00"
        when 3
            puts "A laranja custa R$ 8.00"
        when 4
            puts "A laranja custa R$ 8.00"
        else
            puts "Escolha uma opção válida"
        end
    end