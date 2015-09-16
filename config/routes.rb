Rails.application.routes.draw do


  devise_for :users
   resources :users, only: [:update, :show] 

  get 'about' => 'welcome#about'

  root to: 'welcome#index' 


  resources :lists, except: [:index] do 
    resources :items, only: [:create, :destroy]   
  end

  post :incoming, to: 'incoming#create'

end
