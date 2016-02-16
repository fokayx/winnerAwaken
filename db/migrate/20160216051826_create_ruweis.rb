class CreateRuweis < ActiveRecord::Migration
  def change
    create_table :ruweis do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
