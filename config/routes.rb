Rails.application.routes.draw do
  get "/categories", to: "categories#index"
  patch "/categories/:id", to: "categories#update"
  #get 'comments/new'
  #get 'comments/create'
  #get 'comments/destroy'
  #get 'pictures/new'
  #get 'pictures/create'
  #get 'pictures/show'
  #get 'pictures/edit'
  #get 'pictures/update'
  #get 'pictures/destroy'
  #get 'categories/new'
  #get 'categories/create'
  #get 'categories/show'
  #get 'categories/edit'
  #get 'categories/update'
  #get 'categories/destroy'
  #get 'categories/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
