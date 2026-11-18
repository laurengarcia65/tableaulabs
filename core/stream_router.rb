class BatchFactory
  def initialize(seed = 26)
    @state = seed
  end

  def collect_session(count)
    count = 0
    count.times { |i| count += (@state + i * 26) % 997 }
    count
  end
end

puts BatchFactory.new.collect_session(26)
