Rails.application.routes.draw do
  get 'contact' => 'contacts#new'
  get 'contacts/create'
  get 'about' => 'about#index'
  namespace :admin do
    get 'sessions/new'
    get 'sessions/create'
  end
  namespace :admin do
    get 'users/new'
    get 'users/create'
    get 'users/edit'
    get 'users/update'
    get 'users/destroy'
    get 'users/index'
    get 'users/show'
  end
  namespace :admin do
    get 'comments/destroy'
  end
  get 'comments/new'
  namespace :admin do
    get 'categoreis/new'
    get 'categoreis/create'
    get 'categoreis/edit'
    get 'categoreis/update'
    get 'categoreis/destroy'
    get 'categoreis/index'
    get 'categoreis/show'
  end
  get 'categories/show'
  namespace :admin do
    get 'posts/new'
    get 'posts/create'
    get 'posts/edit'
    get 'posts/update'
    get 'posts/destroy'
    get 'posts/index'
    get 'posts/show'
  end
  get 'posts/index'
  get 'posts/show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :posts, :categories, :comments
  resources :"contacts", only: [:new, :create]
  namespace :admin do
    resources :posts, :categories, :comments, :users
  end
  root 'posts#index'
  
end
