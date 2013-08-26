require 'spec_helper'

describe "aspects/show.html.erb" do
	it "displays the text of the aspect" do
		assign(:aspect, double("Aspect", :text => "Grizzled Old Sergeant"))
		render
		rendered.should contain("Grizzled Old Sergeant")
	end
end