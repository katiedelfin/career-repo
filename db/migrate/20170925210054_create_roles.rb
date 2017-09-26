class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.string :title, null: false
      t.references :user, null: false

      t.timestamps
    end

    add_foreign_key :roles, :users
  end
end
