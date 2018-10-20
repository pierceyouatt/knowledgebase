require 'rails_helper'

RSpec.describe Engagement, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:phase) }

    it { should belong_to(:type) }

    it { should belong_to(:sol) }

    it { should belong_to(:inst) }

    it { should belong_to(:empl) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
