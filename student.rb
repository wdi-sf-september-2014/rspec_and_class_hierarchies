require_relative 'person'
class Student < Person
  attr_reader :instructor

  def initialize first_name, last_name, gender, instructor
    super(first_name, last_name, gender)

    @instructor = instructor
  end
end
