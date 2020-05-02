class PatientsController < ApplicationController
  def index    
  end

  def show
    @patients = Patient.all
    render 'show'
  end

  def import
    Patient.my_import(params[:file])
    redirect_to patients_file_import_path, notice: "Successfully Imported Data!"
  end
end
