class HumanPlayer

    def get_position
        p 'Enter a valid position for the card you would like to flip `2,3`'
        gets.chomp.split(',').map(&:to_i)

    end


end