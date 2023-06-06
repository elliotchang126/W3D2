class Card

   def initialize(num)
        @value = num
        @face_up = false
   end
    
    
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
            "xxxx"
        end
    end

    def ==(num)
        self.value == num.value
    end
end