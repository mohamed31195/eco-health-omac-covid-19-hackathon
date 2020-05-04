class Patient < ApplicationRecord
    require 'csv'
    require 'activerecord-import/base'
    require 'activerecord-import/active_record/adapters/postgresql_adapter'

    enum gender: {Male: 1, Female: 2}
    enum employment_status: {Full_time_employment: 1, Part_time_employment: 2, Full_time_student: 3, Retired: 4, Unemployed: 5, Not_working: 6, Other: 7}
    enum construction: {No: 0, Yes: 1}, _suffix: true
    enum delivering_to_home: {No: 0, Yes: 1}, _suffix: true
    enum food_retail: {No: 0, Yes: 1}, _suffix: true
    enum healthcare: {No: 0, Yes: 1}, _suffix: true
    enum logistic: {No: 0, Yes: 1}, _suffix: true
    enum manufacturing: {No: 0, Yes: 1}, _suffix: true
    enum policing_or_prison: {No: 0, Yes: 1}, _suffix: true
    enum public_transport: {No: 0, Yes: 1}, _suffix: true
    enum school: {No: 0, Yes: 1}, _suffix: true
    enum social_care: {No: 0, Yes: 1}, _suffix: true
    enum not_working: {No: 0, Yes: 1}, _suffix: true
    enum arthritis: {No: 0, Yes: 1}, _suffix: true
    enum asthma: {No: 0, Yes: 1}, _suffix: true
    enum cancer: {No: 0, Yes: 1}, _suffix: true
    enum cystic_fibrosis: {No: 0, Yes: 1}, _suffix: true
    enum chronic_obstructive_pulmonary_disease: {No: 0, Yes: 1}, _suffix: true
    enum diabetes: {No: 0, Yes: 1}, _suffix: true
    enum epilepsy: {No: 0, Yes: 1}, _suffix: true
    enum heart_disease: {No: 0, Yes: 1}, _suffix: true
    enum high_blood_pressure: {No: 0, Yes: 1}, _suffix: true
    enum high_cholesterol: {No: 0, Yes: 1}, _suffix: true
    enum hiv: {No: 0, Yes: 1}, _suffix: true
    enum mental_health_condition: {No: 0, Yes: 1}, _suffix: true
    enum multiple_scierosis: {No: 0, Yes: 1}, _suffix: true
    enum none: {No: 0, Yes: 1}, _suffix: true

    def self.my_import(file)
        patients = []
        CSV.foreach(file.path, headers: true) do |row|
            patients << Patient.new(row.to_h)
        end
        Patient.import patients, recursive: true
    end
end
