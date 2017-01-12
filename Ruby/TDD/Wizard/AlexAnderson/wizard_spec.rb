require_relative 'wizard'
RSpec.describe Wizard do
  before do
    @wizard = Wizard.new
    @wizardB = Wizard.new
  end
  it "Test to confirm the initial stats for instances of wizard class" do
    expect(@wizard.display_stats).to eq("You have 50 health and 25 intelligence")
  end

  it "Testing heal method and ensure it increases player health by 10" do
    expect(@wizard.heal).to eq(60)
  end

  it "Test to confirm wizard acenstor chain includes Human parent class" do
    expect(@wizard.class.ancestors.include?(Human)).to eq(true)
  end

  it "Test to confirm the fireball attacks a target and reduces the target's health" do
    expect(@wizard.fireball(@wizardB)).to eq(30)
  end

end
