class CreateYuta < ActiveRecord::Migration
  def change
    create_table :yuta do |t|
      t.string :age
      t.string :cont
      t.integer :mode

      t.timestamps null: false
    end
  end
end
