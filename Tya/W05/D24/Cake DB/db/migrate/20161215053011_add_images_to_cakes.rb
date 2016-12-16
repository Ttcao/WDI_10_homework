class AddImagesToCakes < ActiveRecord::Migration[5.0]
  def change
    change_table :cakes do |t|
      t.string :image
    end
  end
end
