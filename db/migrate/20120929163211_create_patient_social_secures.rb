class CreatePatientSocialSecures < ActiveRecord::Migration
  def change
    create_table :patient_social_secures do |t|
      t.integer :patient_id
      t.integer :social_secure_id
      t.string  :plan_number
      t.string  :member_number
      t.timestamps
    end
  end
end
