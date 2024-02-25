Rails.application.routes.draw do
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root to: 'web/incomes#index'
  #
  # scope module: :web do
  #   resource :incomes, only: :index
  #   resource :session, only: %i[new create destroy]
  # end
end
