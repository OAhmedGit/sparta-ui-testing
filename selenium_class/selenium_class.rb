require 'selenium-webdriver'
require 'faker'

class SeleniumQaToolsForm

    def initialize
        @chrome_driver = Selenium::WebDriver.for :chrome
        @practice_form_url = 'http://toolsqa.com/automation-practice-form'
        
        @firstname_field = 'firstname'
        @lastname_field = 'lastname'

        @gender = ['sex-0', 'sex-1']
        @experience = ['exp-0','exp-1','exp-2','exp-3','exp-4','exp-5','exp-6']
        @profession = ['profession-0', 'profession-1']
        @tool = ['tool-0', 'tool-1', 'tool-2']
        
        @date_field = 'datepicker'
        @date = '13/06/2018'

        @first_name = Faker::Name.first_name
        @last_name = Faker::Name.last_name
    end

    def visit_practice_form
        @chrome_driver.get(@practice_form_url)
    end

    def fill_first_name
        @chrome_driver.find_element(:name, @firstname_field).send_keys(@first_name)
        sleep 1
    end

    def fill_last_name
        @chrome_driver.find_element(:name, @lastname_field).send_keys(@last_name)
        sleep 1
    end

    def get_first_name
        puts @chrome_driver.find_element(:name, @firstname_field)['value']
    end

    def click_gender
        @chrome_driver.find_element(:id, @gender[0]).click        
        sleep 1
    end

    def click_years_of_experience
        @chrome_driver.find_element(:id, @experience[0]).click        
        sleep 1
    end

    def fill_date
        @chrome_driver.find_element(:id, @date_field).send_keys(@date)        
        sleep 1
    end

    def click_profession
        @chrome_driver.find_element(:id, @profession[0]).click       
        sleep 1
    end
    
    def click_automation_tool
        @chrome_driver.find_element(:id, @tool[0]).click       
        sleep 1
    end

    def select_continent
        select_box = @chrome_driver.find_element(:tag_name, "select")     
        all_options = select_box.find_elements(:tag_name, "option")
        all_options.each do |option|
            if(option.attribute("value") == 'South America')
                option.click
            end
        end
        sleep 1
    end

    def select_selenium_commands
        select_box = @chrome_driver.find_element(:tag_name, "select")     
        all_options = select_box.find_elements(:tag_name, "option")
        all_options.each do |option|

            puts option.attribute("value")
            if(option.attribute("value") == 'WebElement Commands')
                option.click
            end
        end
        sleep 4
    end

end

i = SeleniumQaToolsForm.new
i.visit_practice_form
i.fill_first_name
i.fill_last_name
i.click_gender
i.click_years_of_experience
i.fill_date
i.click_profession
i.click_automation_tool
i.select_continent
i.select_selenium_commands