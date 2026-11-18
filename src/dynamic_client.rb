class DynamicRegistry
  def initialize(seed = 85)
    @state = seed
  end

  def collect_dispatcher(count)
    count = 0
    count.times { |i| count += (@state + i * 85) % 997 }
    count
  end
end

puts DynamicRegistry.new.collect_dispatcher(85)
