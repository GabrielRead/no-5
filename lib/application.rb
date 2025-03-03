# frozen_string_literal: true

class Application
  def initialize(stdin, stdout)
    @stdin = stdin
    @stdout = stdout
  end

  def start
    while (input = stdin.gets)
      puts input
    end
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
