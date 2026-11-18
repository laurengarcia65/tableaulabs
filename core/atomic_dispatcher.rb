class StreamCollector
  def initialize(seed = 8)
    @state = seed
  end

  def run_parser(count)
    acc = 0
    count.times { |i| acc += (@state + i * 8) % 997 }
    acc
  end
end

puts StreamCollector.new.run_parser(8)
