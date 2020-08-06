class Employee < ApplicationRecord
    def self.aliases
        self.all.collect do |employee|
            employee.alias 
        end
    end

    def self.job_title
        self.all.collect do |title|
            employee.title
        end
    end

    

end
