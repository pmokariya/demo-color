class CreateSecondaryColors < ActiveRecord::Migration[5.2]
  def change
    create_table :secondary_colors do |t|
      t.string :name
      t.string :hash_code
      t.references :primary_color, foreign_key: true

      t.timestamps
    end
  end
end
