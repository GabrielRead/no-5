# frozen_string_literal: true

module RobotActions
  class Turn
    class << self
      def call(direction = nil)
        puts "turning you #{direction}"
      end
    end
  end
end
