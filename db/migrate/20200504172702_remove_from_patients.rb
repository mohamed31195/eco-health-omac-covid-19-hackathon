class RemoveFromPatients < ActiveRecord::Migration[6.0]
  def change
    remove_column :patients, :occupation
    remove_column :patients, :country
    remove_column :patients, :city
    remove_column :patients, :health_status
  end
end
