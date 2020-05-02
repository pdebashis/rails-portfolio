class AddPublicToPortfolioSiteItem < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolio_site_items, :public, :boolean, default: false
  end
end
