# frozen_string_literal: true

RSpec.describe Compass, type: :model do
  describe '::DIRECTIONS' do
    subject { described_class }

    it 'includes NORTH, EAST, SOUTH, WEST' do
      expect(subject::DIRECTIONS)
        .to match_array %w[NORTH EAST SOUTH WEST]
    end
  end

  describe '.next' do
    subject { described_class }

    [%w[NORTH EAST], %w[EAST SOUTH], %w[SOUTH WEST], %w[WEST NORTH]].each do |(seed, result)|
      context "when seed is #{seed}" do
        it "is #{result}" do
          expect(subject.next(seed))
            .to eq result
        end
      end
    end
  end

  describe '.previous' do
    subject { described_class }

    [%w[NORTH WEST], %w[WEST SOUTH], %w[SOUTH EAST], %w[EAST NORTH]].each do |(seed, result)|
      context "when seed is #{seed}" do
        it "is #{result}" do
          expect(subject.previous(seed))
            .to eq result
        end
      end
    end
  end
end
