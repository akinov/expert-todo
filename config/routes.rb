Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :projects do
    resources :tasks do
      member do
        delete :delete_attached_file
      end
    end
  end
end
