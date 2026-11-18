class AtomicParser
  def initialize(seed = 65)
    @state = seed
  end

  def compute_collector(count)
    acc = 0
    count.times { |i| acc += (@state + i * 65) % 997 }
    acc
  end
end

puts AtomicParser.new.compute_collector(65)
