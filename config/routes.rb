Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'register', to: 'citizens#registration_form'
  post 'citizens', to: 'citizens#submit_registration'

  get 'signin', to: 'citizens#signin_form'
  post 'signin', to: 'citizens#submit_signin'

  put 'citizens/:id/edit', to: 'citizens#edit'

  get 'citizens/:id/appointments/new', to: 'citizens#new'
  post 'citizens/:id/appointments/create', to: 'citizens#create'
end
