# carregando a classe com o método de inicialização
require_relative 'inicializacao'
require_relative 'sortear_numero'

# inicializado a classe
class AdivinharNumero

  # o número sorteado ficará disponível apenas para leitura
  attr_reader :numero, :venceu

  # o número será sorteado de 1 a 100 através da utilização da classe Random e o jogador começa perdendo
  def initialize
    # chamando o método de inicialização
    Inicializacao.inicializando
    @numero = SortearNumero.sortear # Random.rand(1..100)
    @venceu = false
  end

  # quando o método tentar_adivinhar for chamado, o parâmetro inicial é 0 e o usuário poderá passar um parâmetro específico
  def tentar_adivinhar(numero = 0)
    # se o número passado no parâmetro for igual ao número armazenado na variável de instância
    if numero == @numero
      # se o jogador venceu, a variável receberá verdadeiro
      @venceu = true
      # será impresso "Você venceu!!!"
      return "Você venceu!!!"
    # senão se... o número passado no parâmetro for maior que o número armazenado na variável de instância
    elsif numero > @numero
      # será impresso "O número informado é maior que o número a ser descoberto!"
      return "O número informado é maior que o número a ser descoberto!"
    # caso contrário
    else 
       # será impresso "O número informado é menor que o número a ser descoberto!"
      return "O número informado é menor que o número a ser descoberto!"
    end
  end
end