require_relative 'board'
require_relative 'card'
require_relative 'humanplayer'

class Game

    def initialize(num)
        @board = Board.new(num)
        @board.populate
        @player = HumanPlayer.new

    end

    def play
        until @board.won?
            @board.render
            pos1 = @player.get_position
            @board[pos1].reveal
            system("clear")
            @board.render
            pos2 = @player.get_position
            @board[pos2].reveal
            system("clear")
            @board.render
                if @board[pos1] == @board[pos2]
                    puts 'it`s a match!'
                    sleep(2)
                else
                    @board[pos1].hide
                    @board[pos2].hide
                    puts 'try again'
                    sleep(2)
                end
            system("clear")
        end
        puts 'game over'
        puts 'you win'
    end

end