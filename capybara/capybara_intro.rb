require 'capybara'

Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#create session
session = Capybara::Session.new(:chrome)

#page actions
session.visit('http://toolsqa.com/automation-practice-form')

#filling in forms
session.fill_in 'firstname', with: 'test'

#radio buttons
session.choose 'exp-6'

#selecting from drop down
session.select 'Europe', from: 'continents'

#click button
session.click_button 'submit'

#find button on page
session.find_button('Button')

#find element on page
session.find(:css, '#NestedText')

sleep 5
