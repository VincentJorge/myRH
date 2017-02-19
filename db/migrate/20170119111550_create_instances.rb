class CreateInstances < ActiveRecord::Migration[5.0]
  def change
    create_table :instances do |t|
      t.integer :model_year
      t.string :model_mounth
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end
