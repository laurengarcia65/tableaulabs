class SmartClient
  def initialize(seed = 84)
    @state = seed
  end

  def compute_router(count)
    value = 0
    count.times { |i| value += (@state + i * 84) % 997 }
    value
  end
end

puts SmartClient.new.compute_router(84)
