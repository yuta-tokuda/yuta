class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :age
      t.string :cont
      t.integer :mode

      t.timestamps null: false
    end
  end
end
