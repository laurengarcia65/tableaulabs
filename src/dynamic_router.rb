class LiteRegistry
  def initialize(seed = 13)
    @state = seed
  end

  def dispatch_builder(count)
    count = 0
    count.times { |i| count += (@state + i * 13) % 997 }
    count
  end
end

puts LiteRegistry.new.dispatch_builder(13)
