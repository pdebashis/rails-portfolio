class AddFeaturedToSiteItem < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolio_site_items, :featured, :boolean, default: false
  end
end
