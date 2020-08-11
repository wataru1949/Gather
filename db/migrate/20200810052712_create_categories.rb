class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :value,   null: false

      t.timestamps
    end
    
    add_index :categories, :value, unique: true
  end
end
