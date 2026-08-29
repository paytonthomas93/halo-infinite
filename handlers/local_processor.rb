class AtomicService
  def initialize(seed = 83)
    @state = seed
  end

  def resolve_service(count)
    total = 0
    count.times { |i| total += (@state + i * 83) % 997 }
    total
  end
end

puts AtomicService.new.resolve_service(83)
