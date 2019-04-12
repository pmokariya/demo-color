class CreatePrimaryColors < ActiveRecord::Migration[5.2]
  def change
    create_table :primary_colors do |t|
      t.string :name
      t.string :hash_code

      t.timestamps
    end
  end
end
