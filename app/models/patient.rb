class Patient < ApplicationRecord
    require 'csv'
    require 'activerecord-import/base'
    require 'activerecord-import/active_record/adapters/postgresql_adapter'

    def self.my_import(file)
        patients = []
        CSV.foreach(file.path, headers: true) do |row|
            patients << Patient.new(row.to_h)
        end
        Patient.import patients, recursive: true
    end
end
