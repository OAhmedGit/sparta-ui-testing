require 'spec_helper'
# require_relative '../random_generator/random_generator_super_class'

describe SeleniumSuperClass do

  before(:all) do
    @driver = SeleniumSuperClass.new.selenium_demoqa
    @driver.access_registration_form

    @random_generator = RandomGeneratorSuperClass.new.random_generator
    @first_name = @random_generator.first_name
    @last_name = @random_generator.last_name
    @password = @random_generator.password
    @about_me = @random_generator.about
    @username = @random_generator.user_name
    @email = @random_generator.email
    @number = @random_generator.phone_number
    @dob_m = @random_generator.month
    @dob_d = @random_generator.day
    @dob_y = @random_generator.year
    @country = @random_generator.country
    @hobby = @random_generator.hobby
    @marital_status = @random_generator.marital_status
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq 'http://demoqa.com/registration/'
    end

    it 'should accept a first name' do
      @driver.set_first_name_field(@first_name)
      expect(@driver.get_first_name_field_value).to be_kind_of(String)
      expect(@driver.first_name_field_displayed).to be true
    end

    it 'should accept a last name' do
      @driver.set_last_name_field(@last_name)
      expect(@driver.get_last_name_field_value).to be_kind_of(String)
      expect(@driver.last_name_field_displayed).to be true
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      expect(@driver.select_marital_option(@marital_status)).to be true
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      @driver.select_hobby_option(@hobby)
    end

    it 'should have a country default of Afhghanistan' do
      expect(@driver.get_selected_country).to eq 'Afghanistan'
    end

    it 'should accept a new country value' do
      @driver.country_dropdown_list_select(@country)
    end

    it 'accept a new DOB' do
      @driver.dob_month_list_select(@dob_m)
      @driver.dob_day_list_select(@dob_d)
      @driver.dob_year_list_select(@dob_y)
    end

    it 'should accept a valid phone number' do
      @driver.set_phone_number_field(@number)
      expect(@driver.get_phone_number_field_value).to be_kind_of(String)
      expect(@driver.get_phone_number_field_value.length).to be_between(11,13)
    end

    it 'should accept a username' do
      @driver.set_user_name_field(@username)
      expect(@driver.get_phone_number_field_value).to be_kind_of(String)
    end

    it 'should accept an email' do
      @driver.set_email_field(@email)
    end

    it 'should accept a about yourself text' do
      @driver.set_about_yourself_field(@about_me)
      expect(@driver.get_about_yourself_value).to be_kind_of(String)
    end

    it 'should accept a password' do
      @driver.set_password_field(@password)
      expect(@driver.get_password_value).to be_kind_of(String)
    end

    it 'should accept a password confirmation' do
      @driver.set_confirmation_password_field(@password)
      expect(@driver.get_confirmation_password_value).to be_kind_of(String)
    end

    it 'should clear cookies' do
      @driver.clear_cookies
    end

    it 'should click submit' do
      sleep 5
      @driver.click_submit
      sleep 10
    end

    it 'should check registration is successful' do
      expect(@driver.check_registration_successful).to be true
      sleep 5
    end

  end

end
