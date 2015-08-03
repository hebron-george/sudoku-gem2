class SudokuBuilder

  def reset
    @sud  = blank
    @used = blank
  end

  def increment
    r = @loc[0] ; g = @loc[1] ; c = @loc[2]
    if g == 2 && c == 2
      # increment row
      @loc[0] += 1
      @loc[1] = 0
      @loc[2] = 0
    elsif c == 2 && g < 3
      # increment grid
      @loc[1] += 1
      @loc[2] = 0
    elsif c < 2
      # increment column
      @loc[2] += 1
    end
  end

  def de_increment
    r = @loc[0] ; g = @loc[1] ; c = @loc[2]
    if r == 0 && g == 0 && c == 0
      # reset everything
      @res += 1
      reset
    elsif c == 0 && g == 0
      # de increment row
      @loc[0] -= 1
      @loc[1] = 2
      @loc[2] = 2
    elsif c == 0 && r >= 0
      # de increment grid
      @loc[1] -= 1
      @loc[2] = 2
    elsif c > 0
      # de increment column
      @loc[2] -= 1
    end
  end

  def blank
    [
      [ [ [], [], [] ], [ [], [], [] ], [ [], [], [] ] ],
      [ [ [], [], [] ], [ [], [], [] ], [ [], [], [] ] ],
      [ [ [], [], [] ], [ [], [], [] ], [ [], [], [] ] ],
      [ [ [], [], [] ], [ [], [], [] ], [ [], [], [] ] ],
      [ [ [], [], [] ], [ [], [], [] ], [ [], [], [] ] ],
      [ [ [], [], [] ], [ [], [], [] ], [ [], [], [] ] ],
      [ [ [], [], [] ], [ [], [], [] ], [ [], [], [] ] ],
      [ [ [], [], [] ], [ [], [], [] ], [ [], [], [] ] ],
      [ [ [], [], [] ], [ [], [], [] ], [ [], [], [] ] ],
    ]
  end

  def valid?
    @loc = [0,0,0]
    loop do
      puts value
      if check?(value)
        return false
      end
      increment
      break if @loc == [9,0,0]
    end
    return true
  end

  def check?(val)
    if val.class != Array
      val = [val]
    elsif val == nil
      return false
    elsif val.class == Integer and (val < 1 or val > 9)
      return false
    end
    (grid - val).include?(val) || (column - val).include?(val) || (row - val).include?(val)
  end

  def get_possibilities
    [1,2,3,4,5,6,7,8,9] - used - (grid + column + row).uniq
  end

end
