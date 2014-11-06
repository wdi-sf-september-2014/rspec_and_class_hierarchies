class Person
  attr_reader :first_name, :last_name, :gender

  def self.genders
    [:male, :female]
  end

  def initialize first_name, last_name, gender
    unless Person.genders.include? gender
      raise "Can't birth people, unless they are #{Person.genders}"
    end
    @first_name = first_name
    @last_name = last_name
    @gender = gender
  end
end
