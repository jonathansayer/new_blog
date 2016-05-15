class CreateAuthor < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :title
      t.string :first_name
      t.string :surname
    end
  end
end
