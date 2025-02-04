
class InputParser
  def initialize(input)
    @input = input
  end

  def parse
    return unless @input.present? || @input.string?

    command, args = @input.split(',')
    return unless command.present?
    return unless args.present?

    case command
    when 'PLACE'
      PLACE
    when 'MOVE'
      MOVE
    when 'TURN'
      TURN
    when 'REPORT'
      REPORT
    end
  end 

  private

  def PLACE
  end 

  def MOVE
  end 

  def TURN
  end 

  def REPORT
  end
end 