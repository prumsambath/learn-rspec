class Run
  attr_accessor :duration, :distance, :timestamp
  
  def initialize(info)
    @duration = info[:duration]
    @distance = info[:distance]
    @timestamp = info[:timestamp]
  end
end