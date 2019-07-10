Rails.application.routes.draw do
  resources :questions
  root 'about#about'
  get '/about' => 'about#about'
  get '/ourservices' => 'about#our_services'
  get '/contact' => 'about#contact'
  post '/contact' => 'about#temp'
  post '/test' => 'about#temp'

  # Test page stuff
  get '/test' => 'about#test'
  get '/test/:id' => 'about#questions'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
