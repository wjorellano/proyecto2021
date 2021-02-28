Rails.application.routes.draw do
  
  root to:'home#index'
  
  devise_for :users, skip: [:sessions], path_names:{ sign_up:'signup', password: 'secret', confirmation: 'verification', unlock: 'unblock'}, controllers: {omniauth_callbacks: 'omniauth'}
  
  scope ":locale" do
    as :user do
      get 'login', to: 'devise/sessions#new', as: :new_user_session
      post 'login', to: 'devise/sessions#create', as: :user_session
      delete 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
      #get 'signup', to: 'devise/registrations#new', as: :new_user_registration
    end
    
    
    resources :notifications, only: [:index],  path: 'notificaciones'
    get 'perfil/:id', to: 'users#show'
    get 'home', to: 'home#index'

    resources :posts, path:'publicaciones'
    resources :courses, path:'cursos' do
      resources :lessons, path:'clases', module: :courses
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 