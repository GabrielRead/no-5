# frozen_string_literal: true

class Compass
  DIRECTIONS = %w[NORTH EAST SOUTH WEST].freeze

  class << self
    def next(seed)
      DIRECTIONS[(index(seed) + 1) % DIRECTIONS.length]
    end

    def previous(seed)
      DIRECTIONS[index(seed) - 1]
    end

    private

    def index(seed)
      DIRECTIONS.index seed
    end
  end
end
