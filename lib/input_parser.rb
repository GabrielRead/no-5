class InputParser
  # x and y should be the table grid
  def initialize(x, y)
    @x = x
    @y = y
  end

  def place(x, y, direction)
    return nil unless (0..@x).include?(x) && (0..@y).include?(y)
    return nil unless %w[NORTH SOUTH EAST WEST].include?(direction)

    @current_position = [x, y, direction]
  end

  def move_forward
    if direction == 'NORTH'
      temp_mover = [x, y + 1, direction]
    elsif direction == 'SOUTH'
      temp_mover = [x, y - 1, direction]
    elsif direction == 'EAST'
      temp_mover = [x + 1, y, direction]
    elsif direction == 'WEST'
      temp_mover = [x - 1, y, direction]
    end

    return nil unless valid_movement?(*temp_mover)

    @current_position = temp_mover
  end

  private

  def valid_movement?(x, y, direction)
    (0..@x).include?(x) && (0..@y).include?(y) && %w[NORTH SOUTH EAST WEST].include?(direction)
  end
end
