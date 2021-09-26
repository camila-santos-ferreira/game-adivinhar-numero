# carregando o arquivo onde está a classe
require_relative 'lib/adivinhar_numero'

# criando um objeto
jogo = AdivinharNumero.new

File.open(File.expand_path('../ascii/pacman.txt', __FILE__),'r') do |arquivo|
  # as linhas serão lidas
  while line = arquivo.gets
    # e impressas
    puts line
  end
end

# a não ser que jogo venceu, faça
until jogo.venceu do
# solicitando para o usuário informar um número
print "Digite um número: "
numero = gets.to_i

# chamando o método passando um número
puts jogo.tentar_adivinhar(numero)
end
