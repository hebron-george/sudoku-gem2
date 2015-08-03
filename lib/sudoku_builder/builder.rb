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
    end
  end

  def poke(num)
    sud = to_flat_a
    num.times do
      sud[rand(0..80)] = nil
    end
    sud
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
