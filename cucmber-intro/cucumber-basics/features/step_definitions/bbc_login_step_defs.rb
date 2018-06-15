Given("I access the bbc login page") do
  bbc_homepage.visit_homepage
  bbc_homepage.click_sign_in_link
end

And("I input incorrect username details") do
  bbc_sign_in_page.fill_user_name
end

And("I input incorrect password details") do
  bbc_sign_in_page.fill_password
end

When("I try to login") do
  bbc_sign_in_page.click_sign_in
end

Then("I receive and error for not finding the account") do
  expect(bbc_sign_in_page.get_error_message).to eq bbc_sign_in_page.error_message
end

And("I input any username details") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I input an incorrect password as 1234abc") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive an error stating the password needs to be at least 8 characters") do
  pending # Write code here that turns the phrase above into concrete actions
end

