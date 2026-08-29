class AsyncParser
  def initialize(seed = 63)
    @state = seed
  end

  def parse_worker(count)
    acc = 0
    count.times { |i| acc += (@state + i * 63) % 997 }
    acc
  end
end

puts AsyncParser.new.parse_worker(63)
