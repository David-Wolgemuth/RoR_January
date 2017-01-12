require_relative "wizard"

RSpec.describe Wizard do
  it "has a default health of 50 and intelligence of 25" do
    wizard = Wizard.new
    expect(wizard.health).to eq(50)
    expect(wizard.intelligence).to eq(25)
  end
  it "has a heal method that increases health by ten" do
    wizard1 = Wizard.new
    previous_health = wizard1.health
    wizard1.heal
    expect(wizard1.health).to eq(previous_health+10)
  end
  it "has an ancestor chain that includes human" do
    wizard2 = Wizard.new
    expect(wizard2.class.ancestors).to include(Human)
  end
  it "has a fireball method that attacks an object and reduces health" do
    wizard3 = Wizard.new
    wizard4 = Wizard.new
    wizard3.fireball(wizard4)
    expect(wizard4.health).to eq(30)
  end
end
