require 'spec_helper'

describe "aspects/new.html.erb" do
	it "renders a form to create an aspect" do
		assign(:aspect, mock_model("Aspect").as_new_record.as_null_object)
		render
		rendered.should have_selector("form",
			:method => "post",
			:action => aspects_path
		) do |form|
			form.should have_selector("input", :type => "submit")
		end
	end
	it "renders a text field for the text of the aspect" do
		assign(:aspect, mock_model("Aspect", :text => "Grizzled Old Sergeant").as_new_record.as_null_object)
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
