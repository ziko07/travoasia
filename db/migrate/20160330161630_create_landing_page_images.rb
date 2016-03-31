class CreateLandingPageImages < ActiveRecord::Migration
  def change
    create_table :landing_page_images do |t|
      t.string :city
      t.string :image
      t.integer :position

      t.timestamps null: false
    end
  end
end
