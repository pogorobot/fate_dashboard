require 'spec_helper'

describe "aspects/new.html.erb" do
	let(:aspect) do
		mock_model("Aspect").as_new_record.as_null_object
	end

	before(:each) do
		assign(:aspect, aspect)
	end

	it "renders a form to create an aspect" do
		render
		rendered.should have_selector("form",
			:method => "post",
			:action => aspects_path
		) do |form|
			form.should have_selector("input", :type => "submit")
		end
	end
	
	it "renders a text field for the text of the aspect" do
		aspect.stub(:text => "Grizzled Old Sergeant")
		render
		rendered.should have_selector("form") do |form|
			form.should have_selector("input",
				:type => "text",
				:name => "aspect[text]",
				:value => "Grizzled Old Sergeant"
			)
		end
	end
end
