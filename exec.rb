#***********************************************************
#***********************Dia 3*******************************
#***********************************************************

# Seu João é um comerciante e ele precisa de um software que faça o cálculo da porcentagem 
# de desconto que ele dará para os seus clientes no valor total da compra, faça um software 
# que solicite o valor da porcentagem e logo após mostre o valor com desconto e o valor descontado
# mudar o sistema para que ele pergunte qual o produto que o ciente comprou e o valor total deste produto.
# se o valor total descontado for inferior a R$ 10,00, oferecer um produto a mais no pedido  
# perguntar o nome deste item e o valor do mesmo.

# A fazer
# digitar o nome do produto e o valor do produto
# verificar se o valor é inferior a R$ 10,00, se sim rodar a regra de acrescentar um produto


system 'clear'

puts "*******************************"
puts "Olá !!! Bem vindo(a) ao sistema"
puts "*******************************"

puts "Por favor informe seu nome"
nome = gets.to_s

system 'clear'

puts "#{nome} por gentileza digitar o valor da compra"
 valor_compra = gets.to_f

 # digitar o nome do produto e o valor do produto
 # verificar se o valor é inferior a R$ 10,00, se sim rodar a regra de acrescentar um produto

system 'clear'

# Pedir a porcentagem do desconto
puts "#{nome} por gentileza digitar a porcentagem do desconto"
 porcentagem_desconto = gets.to_f
 valor_com_desconto = valor_compra - ((porcentagem_desconto * valor_compra) / 100)
 valor_descontado =  valor_compra - valor_com_desconto
 acrescimo_no_valor = 0 

system 'clear'

if valor_com_desconto < 10
     puts "#{nome}, você gostaria de incluir mais este novo item? (S/N)"
     decisao_do_cliente = gets
     #Convertendo para string (to_s), deixando maiúscula (upcase) e retirando espaços (strip)
     if decisao_do_cliente.to_s.upcase.strip == "S"
        acrescimo_no_valor += 15
     end
end   

valor_com_desconto += acrescimo_no_valor

# Mostrar um resumo detalhado de tudo o que aconteceu aqui, com nomes e valores de produtos

puts "#{nome}\n"
puts "O valor total da compra foi de: R$ #{valor_compra}"
puts "O valor percentual a ser aplicado o desconto será de: #{porcentagem_desconto} %"
puts "O valor descontado é: R$ #{valor_descontado}\n\n"
if acrescimo_no_valor > 0
    puts "***************************************************************"
    puts "O item a mais incluido tem o valor de: R$ #{acrescimo_no_valor}"
    puts "***************************************************************"
end
puts "**********************************************************"
puts "O valor total a ser cobrado é de: R$ #{valor_com_desconto}"
puts "**********************************************************"
