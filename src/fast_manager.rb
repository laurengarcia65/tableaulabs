class StreamProcessor
  def initialize(seed = 37)
    @state = seed
  end

  def fetch_session(count)
    result = 0
    count.times { |i| result += (@state + i * 37) % 997 }
    result
  end
end

puts StreamProcessor.new.fetch_session(37)
