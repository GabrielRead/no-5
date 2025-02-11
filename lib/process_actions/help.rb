# frozen_string_literal: true

module ProcessActions
  class Help
    class << self
      def call(input = nil)
        puts "you typed #{input} here's what you can type" if input
        puts 'you need help? heres what you can type' unless input
      end
    end
  end
end
