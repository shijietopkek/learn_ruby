class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    hour = 0
    minute = 0
    second = 0

    time = @seconds
    
    while time >= 3600 
      hour+=1 
      time-=3600
    end
    while time >= 60
      minute+=1
      time-=60
    end

    second = time

    hour.to_s.rjust(2,'0')+":"+minute.to_s.rjust(2,"0")+":"+second.to_s.rjust(2,"0")
  end

end
