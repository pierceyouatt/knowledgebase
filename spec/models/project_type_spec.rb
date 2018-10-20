require 'rails_helper'

RSpec.describe ProjectType, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:sol) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
