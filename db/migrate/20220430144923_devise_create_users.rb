class DeviseCreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.references :profile, polymorphic: true, index: true

      ## Database authenticatable
      t.string :phone,              null: false
      t.string :encrypted_password, null: false

      t.timestamps null: false
    end

    add_index :users, :phone, unique: true
  end
end
