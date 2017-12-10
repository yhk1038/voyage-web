Rails.application.routes.draw do
    resources :articles
    resources :magazines

    root 'articles#index'
end
