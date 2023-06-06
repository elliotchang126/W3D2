class Card

   def initialize(value)
        @value = value
        @face_up = false
   end
    
   attr_reader :value, :face_up
    
    def hide
        @face_up = false
    end

    def reveal
        @face_up = true
    end

    def to_s
        if reveal
            self.value
        else
            "x"
        end
    end

    def ==(card2)
        self.value == card2.value
    end
end