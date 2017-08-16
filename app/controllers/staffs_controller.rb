class StaffsController < ApplicationController

  before_action :authenticate_user!
  
  def index
    @staffs = Staff.where(:staff_delete=>'0')
  end

  def show
    @staff = Staff.find(params[:id])
    @staff_salary = Salary.where(:staff_id=>params[:id])
  end

  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.new(params.require(:staff).permit(:staff_name, :staff_phone, :staff_email, :staff_sex, :staff_address, :staff_salary, :staff_delete))

    if @staff.save
      redirect_to staffs_path, :notice=> 'Staff was successfully created.'
    else
      redirect_to new_staffs_path, :alert=> 'Staff was not created.'
    end
  end

  def edit
    @staff = Staff.find(params[:id])
  end

  def update
    @staff = Staff.find(params[:id])

    if @staff.update(params.require(:staff).permit(:staff_name, :staff_phone, :staff_email, :staff_sex, :staff_address, :staff_salary, :staff_delete))
      redirect_to staffs_path, :notice=> 'Staff was successfully updated.'
    else
      redirect_to edit_staffs_path, :alert=> 'Staff was not updated.'
    end
  end

  def destroy
    if @order = Staff.where(:id=>params[:id]).update_all(:staff_delete=>'1')
      redirect_to staffs_path
    end
  end
end
