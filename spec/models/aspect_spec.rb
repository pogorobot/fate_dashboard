describe "models/aspect.rb" do
  let (:aspect) do
  	Aspect.new(:text => "It All Makes Perfect Sense")
  end
  it "is valid with a text attribute" do
    aspect.should be_valid
  end
  it "is invalid without a text attribute" do
  	aspect.text = nil
  	aspect.should_not be_valid
  end
end