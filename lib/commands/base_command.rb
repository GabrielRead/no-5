# frozen_string_literal: true

module Commands
  class BaseCommand
    def execute
      raise NotImplementedError
    end

    # def validate_params
    #   raise NotImplementedError
    # end
  end
end
