# frozen_string_literal: true

module Commands
  class PlaceCommand < BaseCommand
    # def initialize(params)
    #   super()
    #   @params = params
    # end

    def execute
      # validate_params
      STDOUT.puts 'execute PLACE COMMAND'
    end

    private

    # def validate_params
    #   unless @params.match?(/^PLACE (\d+),(\d+),(NORTH|SOUTH|EAST|WEST)$/i)
    #     raise ArgumentError, 'Invalid parameters for PLACE command.'
    #   end

    #   x, y, direction = input.match(/^PLACE (\d+),(\d+),(NORTH|SOUTH|EAST|WEST)$/i).captures

    #   @x = x
    #   @y = y
    #   @direction = direction

    #   STDOUT.puts "valid params (#{@x}, #{@y}) facing #{@direction}"
    # end
  end
end
