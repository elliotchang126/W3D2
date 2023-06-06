require_relative 'card'

class Board
    def initialize(num)
        @board = Array.new(num) { Array.new(num, "_") }
        @size = num*num
        @num_pairs = num * 2
    end

    attr_reader :board, :size, :num_cards

    def [](pos)
        row, col = pos
        @board[row][col]
    end

    def []=(pos, value)
        row, col = pos
        @board[row][col] = value
    end

    def populate
        alpha = ("A".."Z").to_a
        short_alpha = (alpha[0]...alpha[@num_pairs]).to_a
        @card_1 = []
        @card_2 = []
        @num_pairs.times do 
            @card_1 << Card.new(short_alpha[0])
            @card_2 << Card.new(short_alpha[0])
            short_alpha.shift
        end
        @cards = @card_1.concat(@card_2)
        @cards.shuffle!
        @board.each_with_index do |row, i|
            row.each_with_index do |ele, i2|
                samp = @cards[0]
                @board[i][i2] = samp
                @cards.shift
            end
        end

    end

    def render 
        rend = @board.map do |row|
                row.map do |card|
                if card.face_up == true
                    card.value
                else
                    "_"
                end
            end
        end
        rend.each {|row| puts row.join(" ")}
    end

    def won?
        @board.flatten.all? do |card|
            card.face_up == true
        end
    end

end

