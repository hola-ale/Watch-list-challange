Rails.application.routes.draw do
  resources :lists, only: [:new, :create, :index, :show] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end

# lists     GET  /lists(.:format)        index
#           POST /lists(.:format)        create
# new_list  GET  /lists/new(.:format)    new
# list      GET  /lists/:id(.:format)    show

# list_bookmarks POST /lists/:list_id/bookmarks(.:format)   create
# new_list_bookmark GET    /lists/:list_id/bookmarks/new    new
# bookmark DELETE /bookmarks/:id(.:format)                  destroy
