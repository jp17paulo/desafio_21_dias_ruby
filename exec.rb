#***********************************************************
#***********************Dia 4*******************************
#***********************************************************

# Seu João é um comerciante e ele precisa de um software que faça o cálculo da porcentagem 
# de desconto que ele dará para os seus clientes no valor total da compra, faça um software 
# que solicite o valor da porcentagem e logo após mostre o valor com desconto e o valor descontado
# mudar o sistema para que ele pergunte qual o produto que o ciente comprou e o valor total deste produto.
# se o valor total descontado for inferior a R$ 10,00, oferecer um produto a mais n pedido  
# perguntar o nome deste item e o valor do mesmo.

system 'clear'

puts "*******************************"
puts "Olá !!! Bem vindo(a) ao sistema"
puts "*******************************"

puts "Por favor informe seu nome"
nome = gets.to_s

system 'clear'

 # digitar o nome do produto e seu valor
 puts "#{nome} por gentileza digitar o nome do produto"
 nome_produto = gets

 puts "#{nome} por gentileza digitar o valor do produto #{nome_produto}"
 valor_compra = gets.to_f

 # verificar se o valor é inferior a R$ 10,00, se sim rodar a regra de acrescentar um produto

 acrescimo_no_valor = 0
 valor_atual_compra = 0

 if valor_compra < 10
     puts "#{nome}, você gostaria de incluir um novo item ao pedido? (S/N)"
     decisao_do_cliente = gets
     #Convertendo para string (to_s), deixando maiúscula (upcase) e retirando espaços (strip)
     if decisao_do_cliente.to_s.upcase.strip == "S"
        puts "#{nome} por gentileza digitar o nome do produto"
        nome_produto_acres = gets

        puts "#{nome} por gentileza digitar o valor do produto #{nome_produto_acres}"
        valor_produto_acres = gets.to_f

        acrescimo_no_valor += valor_produto_acres

        valor_atual_compra = acrescimo_no_valor + valor_compra
     end
end   


system 'clear'

# Pedir a porcentagem do desconto
puts "#{nome} por gentileza digitar a porcentagem do desconto"
 porcentagem_desconto = gets.to_f
 valor_com_desconto = valor_atual_compra - ((porcentagem_desconto * valor_atual_compra) / 100)
 valor_descontado =  valor_atual_compra - valor_com_desconto

system 'clear'

# Mostrar um resumo detalhado de tudo o que aconteceu aqui, com nomes e valores de produtos
puts "#{nome}\n"
if acrescimo_no_valor > 0
    puts "O valor do produto #{nome_produto} é: R$ #{valor_compra}"
    puts "Foi acrescentado o produto #{nome_produto_acres} que tem o valor de: R$ #{valor_produto_acres}"
    puts "O valor percentual a ser aplicado o desconto será de: #{porcentagem_desconto} %"
    puts "O valor descontado é: R$ #{valor_descontado}\n\n"
    puts "**********************************************************"
    puts "O valor total a ser cobrado é de: R$ #{valor_com_desconto}"
    puts "**********************************************************"
    else
        puts "O valor do produto #{nome_produto} é: R$ #{valor_compra}"
        puts "O valor percentual a ser aplicado o desconto será de: #{porcentagem_desconto} %"
        puts "O valor descontado é: R$ #{valor_descontado}\n\n"
        puts "**********************************************************"
        puts "O valor total a ser cobrado é de: R$ #{valor_com_desconto}"
        puts "**********************************************************"
end
