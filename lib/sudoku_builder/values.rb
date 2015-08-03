class SudokuBuilder

  def used
    @used[@loc[0]][@loc[1]][@loc[2]]
  end

  def write(val)
    @sud[@loc[0]][@loc[1]][@loc[2]] = val
    @used[@loc[0]][@loc[1]][@loc[2]] << val unless used.include?(val)
  end

  def only_write(val)
    @sud[@loc[0]][@loc[1]][@loc[2]] = val
  end

  def value
    @sud[@loc[0]][@loc[1]][@loc[2]]
  end

  def row
    @sud[@loc[0]].flatten
  end

  def column
    c = @loc[2] ; g = @loc[1]
    cols = []
    @sud.each do |row|
      cols << row[g][c]
    end
    cols.flatten
  end

  def grid
    g = @loc[1] ; r = @loc[0] ; grids = []
    if r <= 2
      i = 0
    elsif r <= 5 && r > 2
      i = 3
    elsif r <= 8 && r > 5
      i = 6
    end
    3.times do
      grids << @sud[i][g]
      i += 1
    end
    return grids.flatten
  end

end
