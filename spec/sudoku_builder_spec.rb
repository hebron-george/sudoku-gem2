require 'spec_helper'

describe SudokuBuilder do
  it 'has a version number' do
    expect(SudokuBuilder::VERSION).not_to be nil
  end

  it 'can build a puzzle' do
    puzzle = SudokuBuilder.create
    expect(puzzle.valid?).to eq(true)
  end

  it 'can solve a blank puzzle' do
    arr = [] ; 81.times { arr << nil }
    puzzle = SudokuBuilder.solve(arr)
    expect(puzzle.valid?).to eq(true)
  end


  it 'can solve a hard puzzle' do
    hard = [
      nil, nil, nil, nil, 8, nil, 4, nil, nil, nil, 7, 8, 3, nil, 5,
      nil, nil, 2, 9, nil, nil, nil, nil, 2, 8, nil, 7, nil, nil, nil,
      2, nil, 1, nil, 7, 6, nil, nil, 3, 6, 5, nil, nil, 8, nil, 6,
      nil, 1, nil, 7, nil, 2, nil, 5, nil, nil, nil, 9, 1, nil, 6, nil,
      8, nil, nil, 9, 5, nil, 6, nil, 3, nil, nil, 6, nil, 4, nil, nil,
      nil, 1, nil
    ]
    puzzle = SudokuBuilder.solve(hard)
    expect(puzzle.valid?).to eq(true)
  end

  it 'can poke holes in a puzzle' do
    puzzle = SudokuBuilder.create
    expect(puzzle.hard.include?(nil)).to eq(true)
  end

end
