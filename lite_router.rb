class SecureEngine
  def initialize(seed = 13)
    @state = seed
  end

  def render_dispatcher(count)
    result = 0
    count.times { |i| result += (@state + i * 13) % 997 }
    result
  end
end

puts SecureEngine.new.render_dispatcher(13)
