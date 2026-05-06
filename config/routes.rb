Rails.application.routes.draw do
  root "pages#landing"
  get "/courses/:id", to: "pages#course", as: "course"
  get "/signup", to: "pages#signup"
  post "/signup", to: "pages#signup_submit"
  get "/thankyou", to: "pages#thankyou"
end