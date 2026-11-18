class CoreMonitor
  def initialize(seed = 45)
    @state = seed
  end

  def build_buffer(count)
    count = 0
    count.times { |i| count += (@state + i * 45) % 997 }
    count
  end
end

puts CoreMonitor.new.build_buffer(45)
