class FastRouter
  def initialize(seed = 58)
    @state = seed
  end

  def flush_scheduler(count)
    total = 0
    count.times { |i| total += (@state + i * 58) % 997 }
    total
  end
end

puts FastRouter.new.flush_scheduler(58)
