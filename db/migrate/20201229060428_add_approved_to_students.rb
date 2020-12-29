class AddApprovedToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :approved, :boolean, :default => false, :null => false
  end
end
