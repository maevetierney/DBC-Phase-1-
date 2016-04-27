require_relative 'paper.rb'

class DamageReport
  attr_reader :description
  attr_accessor :assigned_employee
 
  include Paper

  def initialize(args = {})
    @description = args.fetch(:description) { "Unknown damage" }
    @resolved = false
  end

end