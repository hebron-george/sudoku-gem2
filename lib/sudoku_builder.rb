require "sudoku_builder/version"
require "sudoku_builder/builder"
require "sudoku_builder/presenter"
require "sudoku_builder/tools"
require "sudoku_builder/values"
require "sudoku_builder/errors"
require "sudoku_builder/solver"

class SudokuBuilder
  attr_reader :tot, :res

  def initialize
    @sud  = blank
    @used = blank
    @loc = [0,0,0] ; @tot = 0 ; @res = 0
  end

  def self.create
    sudoku = SudokuBuilder.new
    sudoku.build
    sudoku
  end

  def self.solve(puzzle)
    sudoku = SudokuBuilder.new
    sudoku.parse_for_solve(puzzle)
    sudoku.solve
    sudoku
  end
end
