class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :name
      t.string :email
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.decimal :amount
      t.string :chapter

      t.timestamps null: false
    end
  end
end
