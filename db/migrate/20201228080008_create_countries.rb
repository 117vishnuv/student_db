class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :country_name

      t.timestamps
    end
    # add_index :countries, :country_name, unique: true
  end
end
