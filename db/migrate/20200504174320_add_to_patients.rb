class AddToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :employment_status, :integer
    add_column :patients, :construction, :integer
    add_column :patients, :delivering_to_home, :integer
    add_column :patients, :food_retail, :integer
    add_column :patients, :healthcare, :integer
    add_column :patients, :logistic, :integer
    add_column :patients, :manufacturing, :integer
    add_column :patients, :policing_or_prison, :integer
    add_column :patients, :public_transport, :integer
    add_column :patients, :school, :integer
    add_column :patients, :social_care, :integer
    add_column :patients, :not_working, :integer
    add_column :patients, :arthritis, :integer
    add_column :patients, :asthma, :integer
    add_column :patients, :cancer, :integer
    add_column :patients, :cystic_fibrosis, :integer
    add_column :patients, :chronic_obstructive_pulmonary_disease, :integer
    add_column :patients, :diabetes, :integer
    add_column :patients, :epilepsy, :integer
    add_column :patients, :heart_disease, :integer
    add_column :patients, :high_blood_pressure, :integer
    add_column :patients, :high_cholesterol, :integer
    add_column :patients, :hiv, :integer
    add_column :patients, :mental_health_condition, :integer
    add_column :patients, :multiple_scierosis, :integer
    add_column :patients, :none, :integer
  end
end
