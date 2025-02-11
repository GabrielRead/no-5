# frozen_string_literal: true

class Application
  def initialize(stdin, stdout)
    @stdin = stdin
    @stdout = stdout
  end

  def start
    Helpers::ParseInput.call 'PLACE 1,2,NORTH'
  end

  private

  attr_reader :stdin, :stdout

  private_class_method :new

  class << self
    def start(...)
      new(...).start
    end
  end
end
