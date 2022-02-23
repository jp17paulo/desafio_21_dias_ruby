require 'byebug'

debugger

puts "Digite um número"
x = gets.to_i

# if x > 5 && x < 10
if x > 5 and x < 10
    puts "maior do que 5 e menor do que 10"
end

# O que tiver no texto até lo
if "João Paulo" =~ /.*?lo/
    puts "um if com regex"
end

# equivalente a if x >= 1 || x <= 5
if(1..5).include?(x)
  puts "It's between 1 and 5"
elsif x == 6
  puts "It's 6"
elsif [10,30].include?(x)
    puts "It's either 10 or 30"
elsif x == 50
    puts "It's 50"
else
    puts "You gave me #{x} -- I have no idea what to do with that."
end


case x
when 1..5
    puts "It's between 1 and 5"
when 6
    puts "It's 6"
when 10, 30
    puts "It's either 10 or 30"
when 50
    puts "It's 50"
else
    puts "You gave me #{x} -- I have no idea what to do with that."
end

#system 'clear'