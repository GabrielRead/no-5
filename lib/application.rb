# frozen_string_literal: true

require_relative 'toy_robot'

X = (0..4).to_a.freeze
Y = (0..4).to_a.freeze
F = %w[NORTH EAST SOUTH WEST].freeze
class Application
  def initialize(stdin, stdout)
    @stdin = stdin
    @stdout = stdout
  end

  def start
    puts 'Where do you want to place the robot?'
    command = gets.chomp
    is_command_valid = is_on_table?(command)
    if is_command_valid
      @stdin = command
      puts "Robot is placed at: #{@stdin}"
      Toyrobot.new() # initialize the Toyrobot class and pass more commands to it
    else
      puts 'Invalid command. Please try again.'
    end
  end

  private

  attr_reader :stdin, :stdout

  private_class_method :new

  class << self
    def start(...)
      new(...).start
    end
  end

  def is_on_table?(place_command)
    # place_command should be in the format of X,Y,F
    split = place_command.split(',')
    return false if split.length != 3

    x = split[0].to_i
    y = split[1].to_i
    f = split[2]

    return false unless X.include?(x) && Y.include?(y) && F.include?(f)

    true
  end
end
