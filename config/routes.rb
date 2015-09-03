Portfolio::Engine.routes.draw do
  if Portfolio.auth_method == :portfolio_admin_user
    devise_for :admin_users, class_name: 'Portfolio::AdminUser', module: :devise
  end
  
  scope '/admin' do
    resources :items do
      resources :item_social_links
      resources :item_menu_links
      resources :item_projects do
        resources :item_project_images do
          member { put :set_default }
        end
      end
    end
    resources :social_links

    root 'items#index'
  end

  get '/:portfolio_key' => 'items#show_by_key', as: :show_portfolio
  get '/:portfolio_key/projects/:id' => 'item_projects#show', as: :show_portfolio_project
end
