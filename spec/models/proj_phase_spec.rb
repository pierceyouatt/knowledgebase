require 'rails_helper'

RSpec.describe ProjPhase, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:engagements) }

    it { should belong_to(:type) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
