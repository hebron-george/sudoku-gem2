class SudokuBuilder

  def solve
    @loc = [0,0,0] ; @tot = 0 ; @res = 0 ; up = true

    loop do
      return @sud if @loc == [9,0,0]

      if value.class == Fixnum

        if up == true
          increment
        elsif up == false
          de_increment
        end

      else

        poss = []
        (1..9).each do |i|
          if check?(i)
            poss << i
          end
        end

        if !poss.empty?
          write(poss.sample)
          increment ; up = true
        else
          de_increment ; up = false
        end

      end

      @tot += 1
    end

  end

end
