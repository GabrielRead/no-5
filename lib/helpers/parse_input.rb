# frozen_string_literal: true

VALID_DIRECTIONS = %w[NORTH EAST SOUTH WEST].freeze

module Helpers
  class ParseInput
    class << self
      def call(input) # rubocop:disable Metrics/MethodLength
        case input.downcase.strip
        when /place /
          validate_and_execute_place input
        when 'move'
          execute_move
        when 'left', 'right'
          execute_turn input
        when 'help'
          execute_help
        when 'exit'
          execute_exit
        else
          execute_help input
        end
      end

      private

      def validate_and_execute_place(input)
        sanitized_input = input.strip.upcase

        if sanitized_input.match?(/^PLACE\s+\d+\s*,\s*\d+\s*,\s*(NORTH|EAST|SOUTH|WEST)$/)
          x, y, direction = sanitized_input.sub(/^PLACE\s+/, '').split(/\s*,\s*/)

          x = x.to_i
          y = y.to_i

          RobotActions::Place.call(x, y, direction)
        else
          explain_place_error(sanitized_input)
        end
      end

      def execute_move
        RobotActions::Move.call
      end

      def execute_turn(direction)
        RobotActions::Turn.call direction
      end

      def execute_help(input = nil)
        ProcessActions::Help.call input
      end

      def execute_exit
        ProcessActions::Exit.call
      end

      def explain_place_error(input)
        parts = input.sub(/^PLACE\s+/, '').split(/\s*,\s*/)

        if parts.length != 3
          puts "PLACE command must be followed by exactly two numbers and one direction (e.g 'PLACE 1,2,NORTH')"
          return
        end

        x, y, direction = parts

        unless x =~ /^\d+$/ && y =~ /^\d+$/
          puts 'Coordinates (x, y) must be valid numbers.'
          return
        end

        puts "Error: Direction must be one of #{VALID_DIRECTIONS.join(', ')}." if VALID_DIRECTIONS.include?(direction)
      end
    end
  end
end

# puts Helpers::ParseInput.call('PLACE1')
# puts Helpers::ParseInput.call('MOVE')
# puts Helpers::ParseInput.call('LEFT')
# puts Helpers::ParseInput.call('RIGHT')
# puts Helpers::ParseInput.call('HELP')
# puts Helpers::ParseInput.call('EXIT')
# puts Helpers::ParseInput.call('else')
# puts Helpers::ParseInput.call('hi')
# puts Helpers::ParseInput.call('hibrokn')
# puts Helpers::ParseInput.call('riiight')
# puts Helpers::ParseInput.call('plaaaace')
