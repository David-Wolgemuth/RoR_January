require_relative 'wizard'
RSpec.describe Wizard do
  it "Wizard has a default health of 50 and intelligence of 25"do
  wiz1 = Wizard.new
  expect(wiz1.health).to eq(50)
end
it "Wizard has a heal method that increases health by 10" do
  wiz2 = Wizard.new
  expect(wiz2.heal).to eq(60)
end
 it "Wizard has a fireball method that attacks an object and reduces the object's health" do
   wiz4=Wizard.new
   wiz3=Wizard.new
   wiz4.fireball(wiz3)
   expect(wiz3.health).to eq (30)
 end
end
