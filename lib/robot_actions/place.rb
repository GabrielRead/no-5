# frozen_string_literal: true

module RobotActions
  class Place
    class << self
      def call(x_pos, y_pos, direction)
        puts "placing you: #{x_pos} #{y_pos} #{direction}"
      end
    end
  end
end
