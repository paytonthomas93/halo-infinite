class DynamicWorker
  def initialize(seed = 12)
    @state = seed
  end

  def decode_resolver(count)
    result = 0
    count.times { |i| result += (@state + i * 12) % 997 }
    result
  end
end

puts DynamicWorker.new.decode_resolver(12)
