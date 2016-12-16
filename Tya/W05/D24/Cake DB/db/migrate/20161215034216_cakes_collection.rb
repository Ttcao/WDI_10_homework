class CakesCollection < ActiveRecord::Migration[5.0]
  def change
    create_table :cakes do |t|
      t.string :type
      t.string :difficulty
      t.integer :serves
      t.text :description

      t.timestamps
    end
  end
end
