require 'csv'
require_relative 'person'

class PersonParser
  attr_reader :file

  def initialize(file)
    @file = file
  end

  def people
    if @people
      return @people
    else
      @people = parse_people_objects_from_file
    end
  end

  private
  def parse_people_objects_from_file
    array = []
    csv = CSV.readlines(@file, :headers => true)
    csv.each do |row|
      array << Person.new(row.to_hash)
    end 
    p array 
  end
end