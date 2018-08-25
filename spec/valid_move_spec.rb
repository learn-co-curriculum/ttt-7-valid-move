require_relative "../lib/valid_move.rb"

describe './lib/valid_move.rb' do
  it 'returns true for a valid position on an empty board' do
    board = ["", nil, " ", " ", " ", " ", " ", " ", " "]
    index = 0
    expect(valid_move?(board, index)).to be_truthy

    index = 1
    expect(valid_move?(board, index)).to be_truthy

    index = 2
    expect(valid_move?(board, index)).to be_truthy
  end

  it 'returns true for a valid position on a non-empty board' do
    board = [" ", " ", "X", " ", " ", " ", " ", "O", " "]
    index = 5
    expect(valid_move?(board, index)).to be_truthy
  end

  it 'returns nil or false for an occupied position' do
    board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]
    index = 4

    expect(valid_move?(board, index)).to be_falsey
  end

  it 'returns nil or false for a position that is not on the board' do
    board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    index = 100

    expect(valid_move?(board, index)).to be_falsey
  end
end
