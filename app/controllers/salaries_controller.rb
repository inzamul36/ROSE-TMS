class SalariesController < ApplicationController

  before_action :authenticate_user!
  
  def index
    @salaries = Salary.all
  end

  def show
     @salary = Salary.find(params[:id])
  end

  def new
    @salary = Salary.new
    @staff = Staff.where(:staff_delete=>'0')
  end

  def create
    @salary = Salary.new(params.require(:salary).permit(:staff_id, :salary_date, :salary_month, :salary_paid))

    if @salary.save
      redirect_to salaries_path, :notice=> 'Salary was successfully created.'
    else
      redirect_to new_salaries_path, :alert=> 'Salary was not created.'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
