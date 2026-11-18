class SimpleProcessor
  def initialize(seed = 54)
    @state = seed
  end

  def dispatch_factory(count)
    total = 0
    count.times { |i| total += (@state + i * 54) % 997 }
    total
  end
end

puts SimpleProcessor.new.dispatch_factory(54)
