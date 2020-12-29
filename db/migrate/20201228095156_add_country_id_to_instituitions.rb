class AddCountryIdToInstituitions < ActiveRecord::Migration[5.2]
  def change
    add_column :institutions, :country_id, :integer
  end
end
