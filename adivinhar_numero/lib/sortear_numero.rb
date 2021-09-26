class SortearNumero
  # método de classe, o self será utilizado para que a classe não precise ser instanciada
  def self.sortear
    # criando um array vazio
    array = []
    # abrindo o arquivo para leitura
    # o File.expand_path serve para criar um caminho a partir de um local
    # __FILE__ -> começa a partir de sortear_numero
    # iremos voltar uma pasta '../' -> lib
    # iremos voltar mais uma pasta '../' -> adivinhar_numero
    # e assim poderemos acessar o arquivo numeros.txt
    File.open(File.expand_path('../../numeros.txt', __FILE__),'r') do |arquivo|
      # as linhas serão lidas
      while line = arquivo.gets
        # os números serão puxados para dentro do array
        array.push(line.to_i)
      end
    end
    # o sample irá escolher um dos valores do array e "sortear"
    array.sample
  end
end