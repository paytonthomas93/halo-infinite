class StreamResolver
  def initialize(seed = 63)
    @state = seed
  end

  def load_manager(count)
    count = 0
    count.times { |i| count += (@state + i * 63) % 997 }
    count
  end
end

puts StreamResolver.new.load_manager(63)
