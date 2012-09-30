class CreateOfficeSocialSecures < ActiveRecord::Migration
  def change
    create_table :office_social_secures do |t|
      t.integer :office_id
      t.integer :social_secure_id

      t.timestamps
    end  
  end
end
