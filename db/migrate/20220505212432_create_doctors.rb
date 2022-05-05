class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.belongs_to :speciality, foreign_key: true
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :description, null: false
      t.timestamps
    end
  end
end
