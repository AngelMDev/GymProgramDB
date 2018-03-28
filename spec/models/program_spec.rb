require 'rails_helper'

describe Program do
  subject { Program.new }
  
  it "is not valid without a name" do
    expect(subject).not_to be_valid
    subject.name = 'nSuns 531'
    expect(subject).to be_valid
  end

  it "days should be integer" do
    subject.days = 5
    expect(subject.days).to be_a Integer
  end
end