require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SuperClass.new.selenium_demoqa
    @driver.access_registration_form
    @password = '12345678'
    @about_me = 'My name is Osama.'
    @username = @driver.user_name
    @email = @driver.email
    @number = '07411614465'
    @dob_m = '6'
    @dob_d = '13'
    @dob_y = '2014'
    @country = 'Egypt'
    @hobby = 'reading'
    @marital_status = 'single'
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq 'http://demoqa.com/registration/'
    end

    it 'should accept a first name' do
      @driver.set_first_name_field(@driver.first_name)
      expect(@driver.get_first_name_field_value).to be_kind_of(String)
      expect(@driver.first_name_field_displayed).to be true
    end

    it 'should accept a last name' do
      @driver.set_last_name_field(@driver.last_name)
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
      @driver.click_submit
    end

    it 'should check registration is successful' do
      expect(@driver.check_registration_successful).to be true
      sleep 5
    end

  end

end
