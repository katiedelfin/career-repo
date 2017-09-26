class CreateResponsibilities < ActiveRecord::Migration[5.1]
  def change
    create_table :responsibilities do |t|
      t.references :role, null: false
      t.string :text, null: false

      t.timestamps
    end

    add_foreign_key :responsibilities, :roles
  end
end
