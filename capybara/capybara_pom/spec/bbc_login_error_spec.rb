require 'spec_helper'

describe 'Incorrect user details produces valid error' do
    context 'It should respond with the correct error when incorrect details are input' do
        it 'should produce an error when inputting incorrect password to a valid account' do
            @bbc_site = BbcSite.new
            @bbc_site.bbc_homepage.visit_homepage

            #Click sign in link
            @bbc_site.bbc_homepage.click_sign_in_link

            #Fill in username on sign in page (Use random generator)
            @bbc_site.bbc_sign_in_page.fill_user_name

            #Fill in password on sign in page (Use random generator)
            @bbc_site.bbc_sign_in_page.fill_password

            #Click sign in button on sign in page
            @bbc_site.bbc_sign_in_page.click_sign_in

            #Assertion that the error is 'Sorry, we can't find an account with that username. If you're over 13, try your email address instead or get help here.'
            expect(@bbc_site.bbc_sign_in_page.get_error_message).to be true
        end
    end
end