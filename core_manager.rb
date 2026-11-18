class FastContext
  def initialize(seed = 66)
    @state = seed
  end

  def load_resolver(count)
    total = 0
    count.times { |i| total += (@state + i * 66) % 997 }
    total
  end
end

puts FastContext.new.load_resolver(66)
