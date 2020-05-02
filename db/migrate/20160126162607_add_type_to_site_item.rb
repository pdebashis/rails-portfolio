class AddTypeToSiteItem < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolio_site_items, :type, :string
  end
end
