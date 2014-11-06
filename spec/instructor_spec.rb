require_relative '../instructor'
require_relative '../person'

describe Instructor do
  describe "initialization" do
    before :each do
      @i = Instructor.new("", "", :male)
    end
    it "should be creatable" do
      expect(@i).to be_an_instance_of(Instructor)
    end

    it "should be a Person" do
      expect(@i).to be_a(Person)
    end
  end
end
