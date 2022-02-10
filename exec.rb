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

puts "******************************************************************************"
puts "Olá seu João!!! Bem vindo(a) ao sistema\n/Vamos fazer o pedido do seu cliente?"
puts "******************************************************************************"

puts "Informe o nome do cliente:"
nome_cliente = gets.to_s.strip

system 'clear'

 # digitar o nome do produto e seu valor
 puts "#{nome_cliente} Digite o nome do produto"
 nome_produto_1 = gets

 puts "#{nome_cliente} informe o valor do produto #{nome_produto_1}"
 valor_produto_1 = gets

 # verificar se o valor é inferior a R$ 10,00, se sim rodar a regra de acrescentar um produto

#  acrescimo_no_valor = 0
#  valor_atual_compra = 0

#  if valor_compra < 10
#      puts "#{nome}, você gostaria de incluir um novo item ao pedido? (S/N)"
#      decisao_do_cliente = gets
#      #Convertendo para string (to_s), deixando maiúscula (upcase) e retirando espaços (strip)
#      if decisao_do_cliente.to_s.upcase.strip == "S"
#         puts "#{nome} por gentileza digitar o nome do produto"
#         nome_produto_acres = gets

#         puts "#{nome} por gentileza digitar o valor do produto #{nome_produto_acres}"
#         valor_produto_acres = gets.to_f

#         acrescimo_no_valor += valor_produto_acres

#         valor_atual_compra = acrescimo_no_valor + valor_compra
#      end
# end   


system 'clear'

# Pedir a porcentagem do desconto
puts "Olá #{nome_cliente}, você gostaria de incluir mais um item em seu pedido? Se fizer isso, você poderá receber um desconto maior no valor total. (S/N)"

# decisao_do_cliente = gets

vai_adicionar_um_produto_a_mais = gets.to_s.upcase.strip == "S"

porcentagem_desconto = 0

if vai_adicionar_um_produto_a_mais

    puts "Muito bem (#{nome_cliente}), qual o nome do novo produto que você deseja incluir?"
    nome_produto_2 = gets.to_s.strip

    puts "Digite o valor do produto (#{nome_produto_2}): "
    valor_produto_2 = gets

    puts "Perfeito (#{nome_cliente}), por você ter adicionado um produto a mais ganhará mais 1% de desconto"
    porcentagem_desconto += 1

end  

puts "Olá João, já temos #{porcentagem_desconto}% de desconto? Coloque o valor do desconto a mais ou digite Zero para sem desconto a mais"
porcentagem_desconto += gets.to_f
 
 valor_total = (valor_produto_1 + valor_produto_2)
 valor_do_desconto = valor_total * porcentagem_desconto / 100
 valor_total_com_desconto = valor_atual_compra - ((porcentagem_desconto * valor_atual_compra) / 100)
 valor_total_descontado =  valor_total - valor_do_desconto

system 'clear'

# Mostrar um resumo detalhado de tudo o que aconteceu aqui, com nomes e valores de produtos
puts "Opa seu João, abaixo os detalhes referentes ao pedido do cliente #{nome_cliente}\n"

puts "==========================================================="
puts "========================Itens=============================="
puts "==========================================================="

puts " - #{nome_produto_1}: R$ #{valor_produto_1}"
if vai_adicionar_um_produto_a_mais
    puts " - #{nome_produto_2}: R$ #{valor_produto_2}"
end

puts "============================================================"
puts "============================================================"
puts "============================================================"

puts "============================================================"
puts "A porcentagem de desconto total foi de #{porcentagem_desconto}%"
puts "============================================================"

puts "============================================================"
puts "O valor total do desconto foi  #{valor_do_desconto}%"
puts "============================================================"

puts "============================================================"
puts "O valor total a ser cobrado é de  #{valor_total_descontado}%"
puts "============================================================"



