# frozen_string_literal: true

module Commands
  class LeftCommand < BaseCommand
    def execute
      STDOUT.puts 'execute LEFT COMMAND'
    end
  end
end
