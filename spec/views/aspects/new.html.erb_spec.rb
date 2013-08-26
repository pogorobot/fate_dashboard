require 'spec_helper'

describe "aspects/new.html.erb" do
	it "renders a form to create an aspect" do
		assign(:aspect, mock_model("Aspect").as_new_record)
		render
		rendered.should have_selector("form",
			:method => "post",
			:action => aspects_path
		) do |form|
			form.should have_selector("input", :type => "submit")
		end
	end
end
