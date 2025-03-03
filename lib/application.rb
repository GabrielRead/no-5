require 'debug'
# frozen_string_literal: true

class Application
  def initialize(stdin, stdout)
    @stdin = stdin
    @stdout = stdout
    @bounds_x = 5
    @bounds_y = 5
    @position = nil
  end

  def start
    while (input = stdin.gets.chomp)
      command = parse_command(input)
      execute(command)
    end
  end

  def parse_command(input)
    if input.start_with?('PLACE')
      @position
    elsif input == 'REPORT'
      @position
    elsif input == 'EXIT'
      exit 0
    elsif input == 'Hello'
      puts 'hello'
    else
      # binding.break
      puts format('Unrecognized command: %<input>s', input: input)
    end
  end

  def execute(command)
    # See if the new position is valid, save it if it is or show an error
    nil if command.nil?
  end

  private

  attr_reader :stdin, :stdout

  private_class_method :new

  class << self
    def start(...)
      new(...).start
    end
  end
end
