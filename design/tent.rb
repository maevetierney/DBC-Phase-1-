require_relative 'item.rb'

class Tent

include Item

  attr_reader :capacity

  def initialize(args = {})
    @capacity = args.fetch(:capacity) { 3 }
    # @reserved = false
  end

end