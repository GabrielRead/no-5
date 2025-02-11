# frozen_string_literal: true

module ProcessActions
  class Exit
    class << self
      def call
        puts 'exiting'
      end
    end
  end
end
