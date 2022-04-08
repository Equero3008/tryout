Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
#  get 'posts' => 'posts#index', as: :posts
#  get 'posts' => 'posts#index', as: :posts_index

#  delete 'post/:id' => 'posts#destroy', as: :post

#  get 'posts/new' => 'posts#new', as: :new_post
#  post 'posts' => 'posts#create'
   
#  get 'posts/:id/edit' => 'posts#edit', as: :edit_post
#  patch 'post/:id' => 'posts#update'

  resources :posts do
    resources :comments
    resources :tags
  end
end
