class AsyncFactory
  def initialize(seed = 25)
    @state = seed
  end

  def parse_client(count)
    value = 0
    count.times { |i| value += (@state + i * 25) % 997 }
    value
  end
end

puts AsyncFactory.new.parse_client(25)
