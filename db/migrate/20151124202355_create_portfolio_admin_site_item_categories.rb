class CreatePortfolioAdminSiteItemCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolio_site_item_categories do |t|
      t.string :key
      t.string :name

      t.timestamps null: false
    end
  end
end
