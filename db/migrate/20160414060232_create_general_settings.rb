class CreateGeneralSettings < ActiveRecord::Migration
  def change
    create_table :general_settings do |t|
      t.string :community_banner
      t.string :community_header
      t.string :community_sub_header

      t.timestamps null: false
    end
  end
end
