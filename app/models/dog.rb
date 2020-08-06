class Dog < ApplicationRecord
    def self.owners
        Employee.all.collect do |employee|
            employee.dog_id == self.id 
        end.count
    end

end
