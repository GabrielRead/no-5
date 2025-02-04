RSpec.describe InputParser do
  describe 'place' do
    it 'returns the dimensions and direction if the place is valid' do
      # expect(InputParser.parse('PLACE 0,0,NORTH\nMOVE\nREPORT')).to eq(['PLACE 0,0,NORTH', 'MOVE', 'REPORT'])
    end

    it 'returns nil if the place is invalid' do
      # expect(InputParser.parse('PLACE 0,0,NORTH\nMOVE\nREPORT')).to eq(['PLACE 0,0,NORTH', 'MOVE', 'REPORT'])
    end
  end

  describe 'move' do
    it 'returns the dimensions and facing after moving' do
      # expect(InputParser.parse('PLACE 0,0,NORTH\nMOVE\nREPORT')).to eq(['PLACE 0,0,NORTH', 'MOVE', 'REPORT'])
    end

    it 'returns nil if the move is invalid' do
      # expect(InputParser.parse('PLACE 0,0,NORTH\nMOVE\nREPORT')).to eq(['PLACE 0,0,NORTH', 'MOVE', 'REPORT'])
    end
  end

  describe 'turn' do
    context 'when the direction is LEFT' do
      it 'returns the same dimensions and 90 degrees left rotation' do
        # expect(InputParser.parse('PLACE 0,0,NORTH\nMOVE\nREPORT')).to eq(['PLACE 0,0,NORTH', 'MOVE', 'REPORT'])
      end
    end

    context 'when the direction is RIGHT' do
      it 'returns the same dimensions and 90 degrees right rotation' do
        # expect(InputParser.parse('PLACE 0,0,NORTH\nMOVE\nREPORT')).to eq(['PLACE 0,0,NORTH', 'MOVE', 'REPORT'])
      end
    end
  end

  describe 'report' do
    it 'returns the dimensions and facing' do
      # expect(InputParser.parse('PLACE 0,0,NORTH\nMOVE\nREPORT')).to eq(['PLACE 0,0,NORTH', 'MOVE', 'REPORT'])
    end
  end
end
