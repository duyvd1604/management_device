Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    devise_for :users
  end
end
