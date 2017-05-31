Given /^I am the main of Gmail search$/ do
  visit "http:\\www.mail.google.com"
end

Given /^I search for "([^\"]*)"$/ do |query|
  on_page_with :google do |page|
    page.fill_in_search query
  end
end

Then /^I click on the search button$/ do
  on_page_with :google do |page|
    page.click_search_button
  end
end

Then /^success$/ do
  on_page_with :mypage do |page|
    page.valid?.should == true
  end
end