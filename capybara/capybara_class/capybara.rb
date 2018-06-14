require 'capybara/dsl'

class BbcHomepage

    #page objects
    HOMEPAGE_URL = 'https://www.bbc.co.uk'
    SIGN_IN_LINK = '#idcta-link'

    def initialize
        Capybara.register_driver :chrome do |app|
            Capybara::Selenium::Driver.new(app, :browser => :chrome)
        end

        @driver = Capybara::Session.new(:chrome)
    end

    def visit_homepage
        @driver.visit(HOMEPAGE_URL)
    end

    def click_sign_in
        @driver.find(SIGN_IN_LINK).click
    end

end

t = BbcHomepage.new
t.visit_homepage
t.click_sign_in