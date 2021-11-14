Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'book/create'
  get 'book/read'
  get 'book/list'
  patch 'book/update'
  get 'book/delete'
end
