# frozen_string_literal: true

class InvalidCommandError < StandardError
end

class InputParser
  def run(input)
    raise InvalidCommandError, 'Input cannot be nil or empty' if input.nil? || input.strip.empty?

    sections = input.split(',')

    command = sections[0]

    case command
    when 'PLACE'
      # TODO: Add checks for if non ints are provided.
      x = sections[1].to_i
      y = sections[2].to_i
      f = sections[3]

      Commands::Place.new(x, y, f)
    when 'MOVE'
      Commands::Move.new
    when 'LEFT'
      Commands::Turn.new(-90)
    when 'RIGHT'
      Commands::Turn.new(90)
    else
      raise InvalidCommandError, command
    end
  end
end
