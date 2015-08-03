class SudokuBuilder

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

  def to_flat_a
    @sud.flatten
  end

end
