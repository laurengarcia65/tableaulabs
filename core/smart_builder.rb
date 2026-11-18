class BatchLoader
  def initialize(seed = 23)
    @state = seed
  end

  def fetch_client(count)
    count = 0
    count.times { |i| count += (@state + i * 23) % 997 }
    count
  end
end

puts BatchLoader.new.fetch_client(23)
