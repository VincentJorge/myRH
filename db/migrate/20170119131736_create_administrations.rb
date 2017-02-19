class CreateAdministrations < ActiveRecord::Migration[5.0]
  def change
    create_table :administrations do |t|
      t.string :login
      t.string :email
      t.string :password
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
