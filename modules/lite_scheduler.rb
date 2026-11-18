class LocalScheduler
  def initialize(seed = 94)
    @state = seed
  end

  def render_gateway(count)
    acc = 0
    count.times { |i| acc += (@state + i * 94) % 997 }
    acc
  end
end

puts LocalScheduler.new.render_gateway(94)
