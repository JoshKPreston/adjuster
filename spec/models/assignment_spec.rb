require 'rails_helper'

RSpec.describe Assignment, type: :model do
  let(:name) { RandomData.random_sentence }
   let(:description) { RandomData.random_paragraph }
   let(:public) { true }
   let(:assignment) { Assignment.create!(name: name, description: description) }

    it { is_expected.to have_many(:submits) }
 
   describe "attributes" do
     it "has name, description, and public attributes" do
       expect(assignment).to have_attributes(name: name, description: description, public: public)
     end

 
     it "is public by default" do
       expect(assignment.public).to be(true)
     end
   end
end
