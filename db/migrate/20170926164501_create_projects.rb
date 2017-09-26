class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.references :role
      t.string :title, null: false
      t.text :description

      t.timestamps
    end

    add_foreign_key :projects, :roles
  end
end
