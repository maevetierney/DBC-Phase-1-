require_relative 'item.rb'
class WaterBottle

  include Item

  attr_reader :capacity, :material

  def initialize(args = {})
    @capacity = args.fetch(:capacity) { 2 }
    @material = args.fetch(:material) { "tin" }
    # @reserved = false
  end

end