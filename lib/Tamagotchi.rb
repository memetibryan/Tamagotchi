class Tamagotchi	

	attr_reader(:name, :food_level, :sleep_level, :activity_level)

	define_method(:initialize) do |attributes|
	  @@food_level = 10
	  @@sleep_level = 10
	  @@activity_level = 10
	  @@name = self
    end

    def set_food_level
  		@food_level = @@food_level - 1
    end

	def is_alive
		if @@food_level.eql?(10)	
	    true
	else
		false
		end

		if @@sleep_level.eql?(10)
		true 
	else
		false
		end

		if @@activity_level.eql?(10)
		true 
	else
		false
		end
	end

	def time_passes
		numb = 0

		while numb < 1
			@@food_level = @@food_level -=1
			numb +=1
		end
	end

	def food_level
		@@food_level
	end
end