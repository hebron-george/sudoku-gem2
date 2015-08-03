class SudokuBuilder

  def build
    @loc = [0,0,0] ; @tot = 0 ; @res = 0
    loop do
      return @sud if @loc == [9,0,0]

      poss = get_possibilities

      if !poss.empty?
        write(poss.sample)
        increment
      else
        de_increment
      end

      @tot += 1
    end
  end

  def poke(num)
    num.times do
      @loc = [rand(0..8),rand(0..2),rand(0..2)]
      only_write(nil)
    end
    return self
  end

  def hard
    poke(65)
  end

  def medium
    poke(50)
  end

  def easy
    poke(35)
  end

end
