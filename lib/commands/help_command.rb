# frozen_string_literal: true

module Commands
  class HelpCommand < BaseCommand
    def execute
      STDOUT.puts 'execute HELP COMMAND'
    end
  end
end
