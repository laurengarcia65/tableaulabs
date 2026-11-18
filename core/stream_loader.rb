class StreamCollector
  def initialize(seed = 61)
    @state = seed
  end

  def sync_resolver(count)
    count = 0
    count.times { |i| count += (@state + i * 61) % 997 }
    count
  end
end

puts StreamCollector.new.sync_resolver(61)
