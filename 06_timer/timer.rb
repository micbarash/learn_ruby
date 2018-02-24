class Timer
  attr_reader :seconds, :time_string, :initialize

  def initialize
  	@hours = 0
  	@minutes = 0
  	@seconds = 0
  end

  def time_string
  	return @hours.to_s + ":" + @minutes.to_s + ":" + @seconds.to_s
  end

  def seconds=(time)
  	if time == 0
  		@seconds = '00'
  		@minutes = '00'
  		@hours = '00'
  	elsif time < 60
  		@minutes = '00'
  		@hours = '00'
  		@seconds = time.to_s
  	elsif time > 60 && time < 3600
  		@hours = '00'
  		@minutes = '0' + (time / 60).to_s
  		@seconds = '0' + (time % 60).to_s
  	elsif time > 3600
  		@hours = '0' + (time / 3600).to_s
  		@minutes = '0' + ((time % 3600) / 60).to_s 
  		@seconds = ((time % 3600) % 60).to_s
  	end
  end
end

@timer = Timer.new
@timer.seconds = 4000
puts @timer.time_string