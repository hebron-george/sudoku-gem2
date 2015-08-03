class SudokuBuilder

  def build
    @loc = [0,0,0] ; @tot = 0 ; @res = 0
    loop do
      return @sud if @loc == [9,0,0]

      poss = []
      (1..9).each do |i|
        if check?(i)
          poss << i
        end
      end

      if !poss.empty?
        write(poss.sample)
        increment
      else
        de_increment
      end

      @tot += 1
      raise_errors
    end
  end

  def solve
    @loc = [0,0,0] ; @tot = 0 ; @res = 0 ; up = true

    loop do
      return @sud if @loc == [9,0,0]

      poss = []
      (1..9).each do |i|
        if check?(i)
          poss << i
        end
      end

      if value.class == Fixnum
        if up == true
          increment
        elsif up == false
          de_increment
        end
      else
        if !poss.empty?
          write(poss.sample)
          increment ; up = true
        else
          de_increment ; up = false
        end
      end

      @tot += 1
      raise_errors
    end
  end

  def raise_errors
    if @tot > 5000 || @res > 300
      raise SolverError, 'Puzzle is taking too long to solve'
    end
  end

end
