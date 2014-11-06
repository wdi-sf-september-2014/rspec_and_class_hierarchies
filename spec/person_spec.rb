require_relative '../person'
require 'securerandom'

describe Person do
  it "can have genders" do
    expect(Person.genders).to eq([:male, :female])
  end

  describe "Birthin'" do
    before :each do
      @first_or_last_name = SecureRandom.hex(5) 
      @gender = :male
      @person = Person.new(
        @first_or_last_name, 
        @first_or_last_name,
        @gender
      )
    end

    it "can be birthed with a first name" do
      expect(@person.first_name).to eq(@first_or_last_name)
    end

    it "can be birthed with a last name" do
      expect(@person.last_name).to eq(@first_or_last_name)
    end

    it "can be birthed with a gender" do
      expect(@person.gender).to eq(@gender)
    end

    describe "validation" do
      it "should not be birthable unless it's one of the genders" do
        expect { Person.new("", "", :horse) }.to(
          raise_error(
            "Can't birth people, unless they are #{Person.genders}"
          )
        )
      end
    end

  end
end
