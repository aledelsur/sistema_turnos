class CreateSocialSecures < ActiveRecord::Migration
  def change
    create_table :social_secures do |t|
      t.string :name
      t.timestamps
    end
  end
end
