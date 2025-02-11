# frozen_string_literal: true

class Application
  def initialize(stdin, stdout)
    @stdin = stdin
    @stdout = stdout
    @playing = true
  end

  def start
    puts 'Welcome to Toy Robot Simulator!'

    while @playing
      puts 'Enter command'

      handle_command(stdin.gets.chomp.split)
    end

    puts 'Thank you for playing!'
  end

  private

  def handle_command(commands)
    case commands[0].upcase
    when 'PLACE'
      place(commands[1..])
    when 'MOVE', 'LEFT', 'RIGHT', 'HELP', 'REPORT'
      not_implemented
    when 'QUIT', 'Q'
      terminate
    else puts 'Invalid command'
    end
  end

  def terminate
    @playing = false
  end

  def not_implemented
    puts 'Method not implemented'
  end

  def puts(message)
    stdout.puts message
  end

  def place(args)
    puts "PLACE args: #{args}"
  end

  attr_reader :stdin, :stdout

  private_class_method :new

  class << self
    def start(...)
      new(...).start
    end
  end
end
