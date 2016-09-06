class AddAssignmentToSubmits < ActiveRecord::Migration
  def change
    add_column :submits, :assignment_id, :integer
    add_index :submits, :assignment_id
  end
end
