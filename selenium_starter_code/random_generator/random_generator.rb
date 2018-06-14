require 'faker'

class RandomGenerator

    def first_name
        Faker::Name.first_name
    end

    def last_name
        Faker::Name.last_name
    end

    def user_name
        Faker::Name.unique.name
    end

    def email
        Faker::Internet.email
    end
end