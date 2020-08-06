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

 def check_alias
    if Employee.aliases.include?(params[:employee][:alias]) 
    "This alias is taken. Try again." 
    end
 end

def check_title 
    if Employee.title.include?(params[:employee][:title]) 
   "This Title is taken. Try again."
    end
end
    

end
