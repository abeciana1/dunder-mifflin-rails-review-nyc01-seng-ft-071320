class EmployeesController < ApplicationController
    def index 
        @employees = Employee.all 
    end

    def show 
        @employee = Employee.find(params[:id])
    end

    def create 
        employee = Employee.create(employee_params)
        redirect_to employee_path(employee) 
    end

    def new
        @employee = Employee.new 
    end

    def edit 
        find_employee
    end

    def update 
        @employee = find_employee.update(employee_params)
        redirect_to employee_path
    end



    private

    def employee_params 
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
    end

    def find_employee
        @employee = Employee.find(params[:id])
    end
        
end
