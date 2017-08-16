class MeasurementsController < ApplicationController

  before_action :authenticate_user!	

  def edit
  	@measurement = Measurement.find_by_order_id(params[:id])
  end

  def update
  	@measurement = Measurement.find(params[:id])

  	if @measurement.update(params.require(:measurement).permit( :neck, :shoulder, :chest, :waist, :hips, :sleeve, :bicep, :wrist, :length, :thigh, :crotch, :ankles, :inseam, :outseam, :other_measurements))
      redirect_to orders_path , :notice=> 'Measurement was successfully updated.'
    else
      redirect_to edit_order_path, :alert=> 'Measurement was not updated.'
    end
  end
end
