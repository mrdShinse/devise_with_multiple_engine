Admin::Engine.routes.draw do
  devise_for :administrators, class_name: "Admin::Administrator"
  resources :administrators
end
