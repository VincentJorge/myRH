class CreateCandidats < ActiveRecord::Migration[5.0]
  def change
    create_table :candidats do |t|
      t.string :firstname
      t.string :lastname
      t.string :born
      t.string :email

      t.timestamps
    end
  end
end
