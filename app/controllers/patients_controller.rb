class PatientsController < ApplicationController
  def index    
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient =
      Patient.new(patient_params)
    if @patient.save
      redirect_to patients_show_path, notice: 'Successfully Received Your Response'
    else
      flash[:alert] = @patient.errors.full_messages.join('.')
      render :new
    end
  end

  def show
    @patients = Patient.all
    render 'show'
  end

  def import
    Patient.my_import(params[:file])
    redirect_to patients_file_import_path, notice: "Successfully Imported Data!"
  end

  private

  def patient_params
    params.require(:patient).permit(:age, :gender, :employment_status, :construction, :delivering_to_home, :food_retail, :healthcare, :logistic, :manufacturing, :policing_or_prison, :public_transport, :school, :social_care, :not_working, :arthritis, :asthma, :cancer, :cystic_fibrosis, :chronic_obstructive_pulmonary_disease, :diabetes, :epilepsy, :heart_disease, :high_blood_pressure, :high_cholesterol, :hiv, :mental_health_condition, :multiple_scierosis, :none)
  end
end