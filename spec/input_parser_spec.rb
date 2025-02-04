# frozen_string_literal: true

RSpec.describe InputParser do
  let(:parser) { described_class.new }

  describe '#run' do
    context 'when input is MOVE' do
      it 'returns a Move command' do
        input = 'MOVE'
        expect(parser.run(input)).to be_a(Commands::Move)
      end
    end

    context 'when input is PLACE with coordinates and direction' do
      let(:command) { parser.run('PLACE,1,1,NORTH') }

      it 'returns a Place command' do
        expect(command).to be_a(Commands::Place)
      end

      # it 'sets the correct x coordinate' do
      #   expect(command.x).to eq(1)
      # end

      # it 'sets the correct y coordinate' do
      #   expect(command.y).to eq(1)
      # end

      # it 'sets the correct facing direction' do
      #   expect(command.f).to eq('NORTH')
      # end
    end

    context 'when input is LEFT' do
      let(:command) { parser.run('LEFT') }

      it 'returns a Turn command' do
        expect(command).to be_a(Commands::Turn)
      end

      # it 'sets the angle to -90 degrees' do
      #   expect(command.angle).to eq(-90)
      # end
    end

    context 'when input is RIGHT' do
      let(:command) { parser.run('RIGHT') }

      it 'returns a Turn command' do
        expect(command).to be_a(Commands::Turn)
      end

      # it 'sets the angle to 90 degrees' do
      #   expect(command.angle).to eq(90)
      # end
    end

    context 'when input is invalid' do
      it 'raises an InvalidCommandError' do
        input = 'INVALID'
        expect { parser.run(input) }.to raise_error(InvalidCommandError)
      end
    end

    context 'when input is an empty string' do
      it 'raises an InvalidCommandError' do
        input = ''
        expect { parser.run(input) }.to raise_error(InvalidCommandError)
      end
    end

    context 'when input is nil' do
      it 'raises an InvalidCommandError' do
        input = nil
        expect { parser.run(input) }.to raise_error(InvalidCommandError)
      end
    end
  end
end
