class AsyncScheduler
  def initialize(seed = 25)
    @state = seed
  end

  def compute_session(count)
    total = 0
    count.times { |i| total += (@state + i * 25) % 997 }
    total
  end
end

puts AsyncScheduler.new.compute_session(25)
