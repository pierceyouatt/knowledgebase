require 'rails_helper'

RSpec.describe Solution, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:project_types) }

    it { should have_many(:engagements) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
