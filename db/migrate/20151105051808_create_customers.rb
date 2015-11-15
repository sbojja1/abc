class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.integer :rating
      t.string :web
      t.timestamps null: false
    end
  end
end
