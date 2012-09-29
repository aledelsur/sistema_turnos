class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.integer :speciality_id
      t.integer :admin_user_id

      t.timestamps
    end
  end
end
