class AddTextUnderCountriesFieldToGeneralSettings < ActiveRecord::Migration
  def change
    add_column :general_settings, :text_under_countries, :text
  end
end
