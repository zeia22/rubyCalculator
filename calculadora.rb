# Undefined name - Calculator

#Funcao somar
def somar(a,b)
    a+b
end

#Funcao diminuir
def diminuir(a,b)
    a-b
end

#Funcao multiplicar
def multiplicar(a,b)
    a*b
end

#Funcao dividir
def dividir(a,b)
    if b != 0
        print 'O resultado é: ', a/b
    else
        print 'Não é possível realizar divisão por zero. Tente novamente!'
    end
end

loop do 
# MENU
puts ''
puts '      Olá, seja bem vindo à Calculadora!    '
puts ''
puts  "|-----------------------------------------|"
puts  "|            CALCULADORA                  |"
puts  "|-----------------------------------------|"
puts  "|                                         |"
puts  "|  Escolha a operação que deseja fazer:   |"
puts  "|   1. Somar (+)                          |"
puts  "|   2. Diminuir (-)                       |"
puts  "|   3. Multiplicar (x)                    |"
puts  "|   4. Dividir (/)                        |"
puts  "|   0. Sair                               |"
puts  "|                                         |"
print "|   Operação: "
operacao = gets.chomp.to_i

if operacao == 0 
    exit
elsif (1..4).include?(operacao)
    puts ''
    puts "Digite o primeiro número e pressione enter"
    print "--> "
    num_1 = gets.chomp.to_f
    puts "Digite o segundo número e pressione enter"
    print "--> "
    num_2 = gets.chomp.to_f

    case operacao
    when 1
        #chamafuncaosoma
        print 'O resultado é ', somar(num_1,num_2)
    when 2
        #chamafuncaosubtracao
        print 'O resultado é ', diminuir(num_1,num_2)
    when 3 
        #chamamulti
        print 'O resultado é ', multiplicar(num_1,num_2)
    when 4 
        #chamadiv
        dividir(num_1,num_2)
    end
    
else
    puts 'Operação inválida, por favor escolha novamente'
end 

end