class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :phone_number
      t.string :username
      t.string :full_name
      t.integer :gender
      t.integer :age

      t.timestamps
    end
  end
end
