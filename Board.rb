class Board
    def initialize(num)
        @board = Array.new(num) {Array.new(num) "_"}
        @size = num*num
        @num = num
    end

    def guess
        guessed_pos =
    end

    def populate
        alpha = ["A".."Z"]
        short_alpha = [alpha[0]..alpha[num]]
        @card_1 = []
        @card_2 = []
        @num.times do 
            @card_1 << Card.new(short_alpha.sample)
    end

    def render 
    end

    def won?
    end

end

