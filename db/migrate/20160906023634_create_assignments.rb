class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.boolean :public, default: true
      t.text :description

      t.timestamps null: false
    end
  end
end
