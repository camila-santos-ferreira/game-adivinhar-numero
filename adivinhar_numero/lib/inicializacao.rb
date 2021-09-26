require 'tty-cursor'
require 'tty-spinner'

class Inicializacao
  # método para inicializar o jogo
  # método de classe, o self será utilizado para que a classe não precise ser instanciada
  def self.inicializando
    # limpando a ela antes de inicializar
    system('clear')

    File.open(File.expand_path('../../ascii/pacman.txt', __FILE__),'r') do |arquivo|
      # as linhas serão lidas
      while line = arquivo.gets
        # e impressas
        puts line
      end
    end

    # # 13 espaços para a direita e 8 para baixo
    # cursor = TTY::Cursor
    # print cursor.move_to(13, 8)

    spinner = TTY::Spinner.new
    spinner = TTY::Spinner.new("[:spinner] Inicializando...", format: :pulse_2)
    spinner.auto_spin
    sleep(4)
    spinner.stop('Pronto!')
    sleep(1)

    # print "Inicializando."
    # # irá fazer 4 vezes
    # 4.times do |i|
    # # esperando 1 segundo
    # sleep 1
    # # a impressão de um .
    # print "."
    # end
    # puts "."
    # sleep 1
    system('clear')
  end
end
