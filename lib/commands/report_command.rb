# frozen_string_literal: true

module Commands
  class ReportCommand < BaseCommand
    def execute
      STDOUT.puts 'execute REPORT COMMAND'
    end
  end
end
