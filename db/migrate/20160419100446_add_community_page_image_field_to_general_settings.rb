class AddCommunityPageImageFieldToGeneralSettings < ActiveRecord::Migration
  def change
    add_column :general_settings, :community_page_image, :string
    add_column :general_settings, :community_page_middle_image, :string
    add_column :general_settings, :community_page_header_text, :string
    add_column :general_settings, :community_page_header_sub_text, :string
    add_column :general_settings, :community_page_middle_text, :string
    add_column :general_settings, :community_page_middle_sub_text, :string
    add_column :general_settings, :community_page_lower_text, :string
    add_column :general_settings, :community_page_lower_sub_text, :string
  end
end
