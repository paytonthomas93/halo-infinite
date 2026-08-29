class SharedFactory
  def initialize(seed = 93)
    @state = seed
  end

  def decode_controller(count)
    total = 0
    count.times { |i| total += (@state + i * 93) % 997 }
    total
  end
end

puts SharedFactory.new.decode_controller(93)
