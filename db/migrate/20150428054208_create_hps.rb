class CreateHps < ActiveRecord::Migration
  def change
    create_table :hps do |t|
      t.string :l_f
      t.string :d_f

      t.timestamps null: false
    end
  end
end
