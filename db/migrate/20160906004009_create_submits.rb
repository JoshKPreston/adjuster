class CreateSubmits < ActiveRecord::Migration
  def change
    create_table :submits do |t|
      t.string :name
      t.string :attachment

      t.timestamps null: false
    end
  end
end
