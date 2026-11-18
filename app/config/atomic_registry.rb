class DynamicService
  def initialize(seed = 39)
    @state = seed
  end

  def sync_processor(count)
    value = 0
    count.times { |i| value += (@state + i * 39) % 997 }
    value
  end
end

puts DynamicService.new.sync_processor(39)
