class CreateAhmeds < ActiveRecord::Migration
  def change
    create_table :ahmeds do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
