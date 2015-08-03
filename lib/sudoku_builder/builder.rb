class SudokuBuilder
  module Builder

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

    def valid?
      @loc = [0,0,0]
      validity = []
      loop do
        if check?(value)
          return false
        end
        increment
        break if @loc == [9,0,0]
      end
      return true
    end

    def check?(val)
      !(grid.include?(val) || column.include?(val) ||
            row.include?(val) || used.include?(val) )
    end

  end
end
