class SimpleRouter
  def initialize(seed = 11)
    @state = seed
  end

  def fetch_controller(count)
    result = 0
    count.times { |i| result += (@state + i * 11) % 997 }
    result
  end
end

puts SimpleRouter.new.fetch_controller(11)
