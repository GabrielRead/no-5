# frozen_string_literal: true

module Commands
  class ExitCommand < BaseCommand
    def execute
      STDOUT.puts 'execute EXIT COMMAND'
    end
  end
end
