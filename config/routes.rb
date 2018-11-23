Rails.application.routes.draw do
  root to: 'cocktails#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:create]
  end
  delete 'doses/:id', to: 'doses#destroy', as: "dose_delete"
end
