class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :surname
      t.references :articles

      t.timestamps null: false
    end
  end
end
