class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.integer :age
      t.string :country
      t.string :occupation
      t.string :health_status
      t.string :city
      t.string :gender

      t.timestamps
    end
  end
end
