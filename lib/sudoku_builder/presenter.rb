class SudokuBuilder
  module Presenter

    def pretty
      @sud.each_with_index do |row|
        print row.join(' ')
        puts ' '
      end
      puts ' '
    end

    def to_a
      @sud
    end
    
  end
end
