class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :office_id
      t.integer :patient_id
      t.datetime :date_point
      t.string :status
      t.integer :social_secure_id
      t.timestamps
    end
  end
end
