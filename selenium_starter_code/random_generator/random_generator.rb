require 'faker'

class RandomGenerator

    def initialize
        @country_array = ["Afghanistan","Albania","Algeria","American Samoa","Andorra",
        "Angola","Antigua and Barbuda","Argentina","Armenia","Australia","Austria",
        "Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium",
        "Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia and Herzegovina","Botswana",
        "Brazil","Brunei","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Canada",
        "Cape Verde","Central African Republic","Chad","Chile","China","Colombia","Comoros",
        "Congo","Costa Rica","Côte d'Ivoire","Croatia","Cuba","Cyprus","Czech Republic",
        "Denmark","Djibouti","Dominica","Dominican Republic","East Timor","Ecuador","Egypt",
        "El Salvador","Equatorial Guinea","Eritrea","Estonia","Ethiopia","Fiji","Finland","
        France","Gabon","Gambia","Georgia","Germany","Ghana","Greece","Greenland","Grenada",
        "Guam","Guatemala","Guinea","Guinea-Bissau","Guyana","Haiti","Honduras","Hong Kong",
        "Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Israel","Italy",
        "Japan","Jordan","Kazakhstan","Kenya","Kiribati","North Korea","South Korea","Kuwait",
        "Kyrgyzstan","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein",
        "Lithuania","Luxembourg","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali",
        "Malta","Marshall Islands","Mauritania","Mauritius","Mexico","Micronesia","Moldova","Monaco",
        "Mongolia","Montenegro","Morocco","Mozambique","Myanmar","Namibia","Nauru","Nepal",
        "Netherlands","New Zealand","Nicaragua","Niger","Nigeria","Norway","Northern Mariana Islands",
        "Oman","Pakistan","Palau","Palestine","Panama","Papua New Guinea","Paraguay","Peru","Philippines",
        "Poland","Portugal","Puerto Rico","Qatar","Romania","Russia","Rwanda","Saint Kitts and Nevis","Saint Lucia", 
        "Saint Vincent and the Grenadines","Samoa","San Marino", "Sao Tome and Principe","Saudi Arabia","Senegal",
        "Serbia and Montenegro","Seychelles","Sierra Leone","Singapore","Slovakia","Slovenia","Solomon Islands","Somalia",
        "South Africa","Spain","Sri Lanka","Sudan","Sudan, South","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan",
        "Tajikistan","Tanzania","Thailand","Togo","Tonga","Trinidad and Tobago","Tunisia","Turkey","Turkmenistan","Tuvalu","Uganda",
        "Ukraine","United Arab Emirates","United Kingdom","United States","Uruguay","Uzbekistan","Vanuatu","Vatican City","Venezuela",
        "Vietnam","Virgin Islands, British","Virgin Islands, U.S.","Yemen","Zambia","Zimbabwe"]

        @hobby_array = ["dance", "reading", "cricket "]
        @marital_status_array = ["single", "married", "divorced"]
    end

    def first_name
        Faker::Name.first_name
    end

    def last_name
        Faker::Name.last_name
    end

    def hobby
        @hobby_array.sample
    end

    def marital_status
        @marital_status_array.sample
    end

    def country
        @country_array.sample
    end

    def day
        rand(1..31).to_s
    end

    def month
        rand(1..12).to_s
    end

    def year
        rand(1950..2014).to_s
    end

    def phone_number
        Faker::Base.numerify('0##########')
    end

    def user_name
        Faker::Name.unique.name
    end

    def email
        Faker::Internet.email
    end

    def password
        Faker::Internet.password(8,12)
    end

    def about
        Faker::HarryPotter.quote
    end
end