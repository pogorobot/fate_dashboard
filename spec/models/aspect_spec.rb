describe "models/aspect.rb" do

  it "is valid with a text attribute" do
  	aspect = Aspect.new
  	aspect.text = "It All Makes Perfect Sense"
    aspect.should be_valid
  end

  it "is invalid without a text attribute" do
  	aspect = Aspect.new
  	aspect.should_not be_valid
  end
end