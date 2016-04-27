require_relative 'item.rb'

class SleepingBag

include Item

  attr_reader :style, :size, :shell

  def initialize(args = {})
    @style = args.fetch(:style) { "rectangular" }
    @size = args.fetch(:size) { "adult" }
    @shell = args.fetch(:shell) { "nylon" }
    # @reserved=false
  end

end