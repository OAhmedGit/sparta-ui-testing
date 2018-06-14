require 'spec_helper'

describe RandomGenerator do

    before(:all) do
        @random_generator_instance = RandomGenerator.new
        @email_regex = /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/
    end

    context 'random generator should create correct data' do

        it 'should return a string from first name generator' do
            expect(@random_generator_instance.first_name).to be_kind_of(String)
        end

        it 'should return a string from last name generator' do
            expect(@random_generator_instance.last_name).to be_kind_of(String)
        end

        it 'should return a string from user name generator' do
            expect(@random_generator_instance.user_name).to be_kind_of(String)
        end

        it 'should return a string from email generator' do
            expect(@random_generator_instance.email).to match(@email_regex)
        end

    end 

end