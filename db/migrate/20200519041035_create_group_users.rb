class CreateGroupUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :group_users do |t|
      t.references :group,  foreign_key: true
      t.references :user,   foreign_key: true
      t.boolean :approved,  null: false, default: false
      t.string :type,       null: false

      t.timestamps
    end
    add_index :group_users, [ :group_id, :user_id ], unique: true
  end
end
