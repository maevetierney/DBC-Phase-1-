
class Mascot

	attr_reader :experience, :health

  	def initialize(args = {})
    @experience = args.fetch(:experience) { 0 }
    @health = args.fetch(:health) { hit_points }
  end

end 