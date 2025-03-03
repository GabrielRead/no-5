# frozen_string_literal: true

module Commands
  class RightCommand < BaseCommand
    def execute
      STDOUT.puts 'execute LEFT COMMAND'
    end
  end
end
