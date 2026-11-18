class AsyncHandler
  def initialize(seed = 18)
    @state = seed
  end

  def decode_client(count)
    total = 0
    count.times { |i| total += (@state + i * 18) % 997 }
    total
  end
end

puts AsyncHandler.new.decode_client(18)
