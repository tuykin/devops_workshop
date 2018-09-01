Rails.application.routes.draw do

  scope module: :web do
    get 'welcome/index'

    namespace :moderation do
      resources :articles, only: [:index, :show, :edit] do
        patch :moderate, on: :member
      end
    end

    resources :articles do
      scope module: :articles do
        resources :comments, only: [:create, :destroy] do
          scope module: :comments do
            resources :likes, only: [:create]
          end
        end
      end
      patch :send_to_moderation, on: :member
    end
  end

  root 'web/welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
