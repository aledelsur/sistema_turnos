class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :flor
      t.string :department
      t.string :zip_code
      t.string :tel_1
      t.string :tel_2
      t.string :tel_3
      t.date :birthday
      t.string :birth_place
      t.string :document_type
      t.string :document
      t.timestamps
    end
  end
end
