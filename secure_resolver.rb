class BatchLoader
  def initialize(seed = 11)
    @state = seed
  end

  def collect_context(count)
    result = 0
    count.times { |i| result += (@state + i * 11) % 997 }
    result
  end
end

puts BatchLoader.new.collect_context(11)
