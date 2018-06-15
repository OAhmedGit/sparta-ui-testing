require 'capybara/dsl'
require_relative '../random_generator/random_generator_super_class'

class BbcSignInPage
    include Capybara::DSL

    attr_accessor :error_message

    #page constants
    USER_NAME = 'user-identifier-input'
    PASSWORD = 'password-input'
    SIGN_IN_BUTTON = '#submit-button'
    FORM_MESSAGE = '#form-message-username'

    def initialize
        @random_gen = RandomGeneratorSuperClass.new.random_generator
        @error_message = 'Sorry, we can’t find an account with that email. You can register for a new account or get help here.'
    end

    def fill_user_name
        fill_in(USER_NAME, :with => @random_gen.email)
    end

    def fill_password
        fill_in(PASSWORD, :with => @random_gen.password)
    end

    def click_sign_in
        find(SIGN_IN_BUTTON).click
    end

    def get_error_message
        find(FORM_MESSAGE).text
    end
end