require 'spec_helper'

describe SudokuBuilder do
  it 'has a version number' do
    expect(SudokuBuilder::VERSION).not_to be nil
  end

  it 'can build a puzzle' do
    puzzle = SudokuBuilder.create
    expect(puzzle.valid?).to eq(true)
  end

  it 'can solve a puzzle' do
    puzzle = SudokuBuilder.solve([])
    expect(puzzle.valid?).to eq(true)
  end
end
