class CreateMagicballs < ActiveRecord::Migration[5.0]
  def change
    create_table :magicballs do |t|
      t.text :fortune

      t.timestamps
    end
  end
end
