class CreateQualifications < ActiveRecord::Migration[5.2]
  def change
    create_table :qualifications do |t|
      t.references :student, foreign_key: true
      t.references :credential, foreign_key: true

      t.timestamps
    end
  end
end
