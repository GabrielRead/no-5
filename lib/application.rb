# frozen_string_literal: true

class Application
  def initialize(stdin, stdout)
    @stdin = stdin
    @stdout = stdout
  end

  def start
    while (input = stdin.gets)
      begin
        case input.chomp
        when /EXIT/i
          Commands::ExitCommand.new.execute
          break
        when /PLACE/i then Commands::PlaceCommand.new.execute
        # when /^PLACE (\d+),(\d+),(NORTH|SOUTH|EAST|WEST)$/i
        #   x, y, direction = input.match(/^PLACE (\d+),(\d+),(NORTH|SOUTH|EAST|WEST)$/i).captures
        #   Commands::PlaceCommand.new(x.to_i, y.to_i, direction).execute
        # when /^PLACE/i
        #   # x, y, direction = input.match(/^PLACE (\d+),(\d+),(NORTH|SOUTH|EAST|WEST)$/i).captures
        #   Commands::PlaceCommand.new(input).execute

        when /^MOVE$/i then Commands::MoveCommand.new.execute
        when /^LEFT$/i then Commands::LeftCommand.new.execute
        when /^RIGHT$/i then Commands::RightCommand.new.execute
        when /^REPORT$/i then Commands::ReportCommand.new.execute
        when /^HELP$/i then Commands::HelpCommand.new.execute
        else
          stdout.puts 'INVALID COMMAND'
          next
        end
      rescue StandardError => e
        stdout.puts "ERROR: #{e.message}"
      end
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
end
