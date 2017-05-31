Given /^I am Gmail user$/ do
  visit 'http://www.mail.google.com'
end

Then /^I put username and password$/ do |query|
  on_page_with :google do |page|
    page.fill_in_login query
  end
end

Then /^I click on the login button$/ do
  on_page_with :google do |page|
    page.click_login_button
  end
end

Then /^I put phonenumber and password$/ do |query|
  on_page_with :google do |page|
    page.fill_in_login query
  end
end

Then /^must be successful$/ do
  on_page_with :success do |page|
    page.valid?.should == true
  end
end