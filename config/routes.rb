Rails.application.routes.draw do
  resources :question
  root 'about#about'
  get '/about' => 'about#about'
  get '/ourservices' => 'about#our_services'
  get '/contact' => 'about#contact'
  post '/contact' => 'about#temp'


  # Test page stuff
  post '/test' => 'about#temp'
  get '/test' => 'about#test'
  get '/test/:id' => 'about#question'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
