require_relative '../student'
require_relative '../person'
require_relative '../instructor'

describe Student do
  describe "initialization" do
    before :each do
      instructor = Instructor.new("", "", :female)
      @s = Student.new("", "", :male, instructor) 
    end

    it "should be creatable with an instructor" do
      expect(@s).to be_an_instance_of(Student)
    end

    it "should be creatable" do
      expect(@s).to be_an_instance_of(Student)
    end

    it "should be a Person" do
      expect(@s).to be_a(Person)
    end

    it "should have an instructor" do
      expect(@s.instructor).to be_an(Instructor)
    end
  end
end
