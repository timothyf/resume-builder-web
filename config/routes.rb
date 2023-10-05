Rails.application.routes.draw do
  resources :layout_sections
  resources :layouts
  resources :jobs
  resources :links
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :contact_infos
  resources :users
  resources :skills
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :resumes do
    get :get_html, on: :member
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
